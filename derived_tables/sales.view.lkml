view: sales {
  # In this query, we retrieve, for each session, the first and last instance of each event in our sequence. If,
  # for each event, its first instance occurs before the last instance of the next event in the sequence, then
  # that is considered a completion of the sequence.
  derived_table: {
    sql: SELECT sales.requester_id as requester_id,
        CAST(TIMESTAMP(FORMAT_TIMESTAMP('%F %H:%M:%E*S', sales.logged_at , 'Japan')) AS DATE) AS logged_on,
        sum(sales.pay_amount_jpy) AS sum_amount_jpy,
        count(sales.request_id) AS amount_count
      FROM
        sales_logs AS sales
      WHERE {% condition event_time %} logged_at {% endcondition %}
      GROUP BY 1,2
       ;;
  }

  dimension: requester_id {
    type: string
    sql: ${TABLE}.requester_id ;;
  }

  dimension_group: logged {
    type: time
    timeframes: [
      date,
      week,
      month,
      year,
      raw
    ]
    sql: ${TABLE}.logged_on ;;
  }

  dimension: sum_amount_jpy {
    type: number
    sql: ${TABLE}.sum_amount_jpy ;;
  }

  dimension: amount_count {
    type: number
    sql: ${TABLE}.amount_count ;;
  }

  filter: event_time {
    type: date_time
  }

}
