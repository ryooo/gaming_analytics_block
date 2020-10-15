view: raw_events {
  sql_table_name: "daily_user_logs" ;;

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
