view: raw_events {
  sql_table_name: "daily_user_logs" ;;
  join: sales_logs {
    type: left_outer
    relationship: one_to_many
    sql_on: ${daily_user_logs.requester_id} = ${sales_logs.requester_id} ;;
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

  dimension: iap_revenue {
    type: number
    sql: sum(sales_logs.pay_amount_jpy) ;;
  }
}
