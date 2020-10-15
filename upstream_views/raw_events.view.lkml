view: raw_events {
  derived_table: {
    sql:

    WITH users AS (
      SELECT
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', logged_at , 'Asia/Tokyo')) AS DATE) AS logged_date,
        requester_id,
        platform,
        progname,
        app_id,
        joined_at,
      FROM
        `daily_user_logs`
      WHERE
        {% condition logged %} logged_at {% endcondition %}
      UNION ALL
      SELECT
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', logged_at , 'Asia/Tokyo')) AS DATE) AS logged_date,
        requester_id,
        platform,
        progname,
        app_id,
        joined_at,
      FROM
        `new_user_logs`
      WHERE
        {% condition logged %} logged_at {% endcondition %}
    ),
    sales AS (
      SELECT
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', logged_at , 'Asia/Tokyo')) AS DATE) AS logged_date,
        requester_id,
        SUM(pay_amount_jpy) AS pay_amount_jpy_sum,
      FROM
        `sales_logs`
      WHERE
        {% condition logged %} logged_at {% endcondition %}
      GROUP BY 1, 2
    ),

    SELECT DISTINCT
      CAST(logged_date AS TIMESTAMP) AS logged_date,
      users.requester_id AS requester_id,
      user.progname AS progname,
      user.platform AS platform,
      user.app_id AS app_id,
      user.joined_at AS joined_at,
      sales.pay_amount_jpy_sum AS pay_amount_jpy_sum,
    FROM
      users
    LEFT OUTER JOIN sales
      ON users.requester_id = sales.requester_id
      AND users.logged_date = sales.logged_date
    ;;
  }

  dimension: logged_date {
    label: "ログイン日"
    type: date
    sql: ${TABLE}.logged_date ;;
    convert_tz: no
  }

  dimension: country {
    type: string
    sql: null ;;
  }

  dimension: version {
    type: string
    sql: null ;;
  }

  dimension: acquisition_cost {
    type: number
    sql: null ;;
  }

  dimension: ad_revenue {
    type: number
    sql: null ;;
  }
}
