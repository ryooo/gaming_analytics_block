view: sales {
  sql_table_name: `sales_logs`
    ;;

  dimension: pk {
    type: string
    sql: concat(${logged_raw},${request_id}) ;;
    primary_key: yes
    hidden: yes
  }

  dimension: app_id {
    label: "APP ID"
    type: string
    sql: ${TABLE}.app_id ;;
  }

  dimension: charged_dia_count {
    label: "付与ダイヤ数"
    type: number
    sql: ${TABLE}.charged_dia_count ;;
  }

  dimension: cwl_id {
    label: "Log ID"
    type: number
    sql: ${TABLE}.CWL_ID ;;
  }

  dimension: ip {
    label: "IP アドレス"
    type: string
    sql: ${TABLE}.ip ;;
  }

  dimension: item_id {
    label: "アイテムID"
    type: string
    sql: ${TABLE}.item_id ;;
  }

  dimension_group: logged {
    label: "日時"
    type: time
    timeframes: [
      raw,
      time,
      hour,
      date,
      week,
      month,
      quarter,
      year,
      day_of_month
    ]
    sql: ${TABLE}.logged_at ;;
  }

  dimension: pay_amount_jpy {
    label: "金額(日本円)"
    type: number
    sql: ${TABLE}.pay_amount_jpy ;;
  }

  dimension: pay_amount_local {
    label: "金額(現地通貨)"
    type: number
    sql: ${TABLE}.pay_amount_local ;;
  }

  dimension: pay_unit {
    label: "通貨単位"
    type: string
    sql: ${TABLE}.pay_unit ;;
  }

  dimension: platform {
    label: "プラットフォーム"
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: progname {
    label: "実行プログラム名"
    type: string
    sql: ${TABLE}.progname ;;
  }

  dimension: request_id {
    label: "リクエストID"
    type: string
    sql: ${TABLE}.request_id ;;
  }

  dimension: requester_id {
    label: "リクエスターID"
    type: number
    sql: ${TABLE}.requester_id ;;
  }

  measure: count {
    label: "カウント"
    type: count
  }

  measure: count_ios {
    label: "カウント iOS"
    type: count
    filters: [platform: "AppStore"]
  }

  measure: count_android {
    label: "カウント Android"
    type: count
    filters: [platform: "GooglePlay"]
  }

  measure: count_other {
    label: "カウント Other"
    type: count
    filters: [platform: "-AppStore,-GooglePlay"]
  }

  measure: requester_count {
    label: "ユニークユーザー数"
    type: count_distinct
    sql: ${requester_id} ;;
    drill_fields: [requester_count_ios, requester_count_android, requester_count_other]
  }

  measure: requester_count_ios {
    label: "ユニークユーザー数 iOS"
    type: count_distinct
    sql: ${requester_id} ;;
    filters: [platform: "AppStore"]
  }

  measure: requester_count_android {
    label: "ユニークユーザー数 Android"
    type: count_distinct
    sql: ${requester_id} ;;
    filters: [platform: "GooglePlay"]
  }

  measure: requester_count_other {
    label: "ユニークユーザー数 Other"
    type: count_distinct
    sql: ${requester_id} ;;
    filters: [platform: "-AppStore,-GooglePlay"]
  }

  measure: pay_amount_jpy_sum {
    label: "購入金額合計(日本円)"
    type: sum
    sql: ${pay_amount_jpy} ;;
    drill_fields: [pay_amount_jpy_sum_ios, pay_amount_jpy_sum_android, pay_amount_jpy_sum_other]
  }

  measure: pay_amount_jpy_sum_ios {
    label: "購入金額合計(日本円) iOS"
    type: sum
    sql: ${pay_amount_jpy} ;;
    filters: [platform: "AppStore"]
  }

  measure: pay_amount_jpy_sum_android {
    label: "購入金額合計(日本円) Android"
    type: sum
    sql: ${pay_amount_jpy} ;;
    filters: [platform: "GooglePlay"]
  }

  measure: pay_amount_jpy_sum_other {
    label: "購入金額合計(日本円) Other"
    type: sum
    sql: ${pay_amount_jpy} ;;
    filters: [platform: "-AppStore,-GooglePlay"]
  }

  measure: arppu {
    label: "ARPPU(日本円)"
    type: number
    sql: SAFE_DIVIDE(${pay_amount_jpy_sum}, ${requester_count}) ;;
    value_format_name: decimal_0
    drill_fields: [arppu_ios, arppu_android, arppu_other]
  }

  measure: arppu_ios {
    label: "ARPPU(日本円) iOS"
    type: number
    sql: SAFE_DIVIDE(${pay_amount_jpy_sum_ios}, ${requester_count_ios}) ;;
    value_format_name: decimal_0
  }

  measure: arppu_android {
    label: "ARPPU(日本円) Android"
    type: number
    sql: SAFE_DIVIDE(${pay_amount_jpy_sum_android}, ${requester_count_android}) ;;
    value_format_name: decimal_0
  }

  measure: arppu_other {
    label: "ARPPU(日本円) Other"
    type: number
    sql: SAFE_DIVIDE(${pay_amount_jpy_sum_other}, ${requester_count_other}) ;;
    value_format_name: decimal_0
  }
}
