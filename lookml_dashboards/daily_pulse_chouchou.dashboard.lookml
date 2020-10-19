- dashboard: chouchouprodkpi
  title: エリオス 主要KPI
  layout: newspaper
  elements:
  - name: シングルタイル-売上
    title: シングルタイル-売上
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_date, sales_logs.pay_amount_jpy_sum]
    fill_fields: [sales_logs.logged_date]
    filters:
      sales_logs.logged_date: 2 days ago for 2 days
    sorts: [sales_logs.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: pay_amount, label: pay_amount, expression: "${sales_logs.pay_amount_jpy_sum}",
        value_format: "\\¥#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 売上
    comparison_label: "(前日)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [sales_logs.pay_amount_jpy_sum, sales_logs.logged_date]
    y_axes: []
    row: 2
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-ARPPU
    title: シングルタイル-ARPPU
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_date, sales_logs.arppu]
    fill_fields: [sales_logs.logged_date]
    filters:
      sales_logs.logged_date: 2 days ago for 2 days
    sorts: [sales_logs.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: arppu, label: arppu, expression: "${sales_logs.arppu}",
        value_format: "\\¥#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ARPPU
    comparison_label: "(前日)"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [sales_logs.arppu, sales_logs.logged_date]
    y_axes: []
    row: 2
    col: 6
    width: 6
    height: 4
  - name: ARPPU
    title: ARPPU
    model: chouchou_prod
    explore: sales_logs
    type: looker_line
    fields: [sales_logs.logged_day_of_month, sales_logs.arppu, sales_logs.arppu_ios,
      sales_logs.arppu_android, sales_logs.arppu_other, sales_logs.logged_month]
    pivots: [sales_logs.logged_month]
    fill_fields: [sales_logs.logged_day_of_month, sales_logs.logged_month]
    filters: {}
    sorts: [sales_logs.logged_month desc, sales_logs.logged_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%d"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: ARPPU
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: "(前日)"
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sales_logs.arppu_ios, sales_logs.arppu_android, sales_logs.arppu_other]
    y_axes: []
    listen:
      月: sales_logs.logged_month
      日付: sales_logs.logged_date
    row: 44
    col: 12
    width: 12
    height: 8
  - name: シングルタイル-PU
    title: シングルタイル-PU
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_date, sales_logs.requester_count]
    fill_fields: [sales_logs.logged_date]
    filters:
      sales_logs.logged_date: 2 days ago for 2 days
    sorts: [sales_logs.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: pu, label: pu, expression: "${sales_logs.requester_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: PU
    comparison_label: "(前日)"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%d"
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sales_logs.requester_count, sales_logs.logged_date]
    y_axes: []
    row: 2
    col: 12
    width: 6
    height: 4
  - name: PU
    title: PU
    model: chouchou_prod
    explore: sales_logs
    type: looker_line
    fields: [sales_logs.logged_month, sales_logs.logged_day_of_month, sales_logs.requester_count,
      sales_logs.requester_count_ios, sales_logs.requester_count_android, sales_logs.requester_count_other]
    pivots: [sales_logs.logged_month]
    fill_fields: [sales_logs.logged_day_of_month, sales_logs.logged_month]
    filters: {}
    sorts: [sales_logs.logged_month desc, sales_logs.logged_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%d"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: PU
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: "(前日)"
    enable_conditional_formatting: false
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3D52B9",
        font_color: !!null '', color_application: {collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7,
          palette_id: 97ce1e3f-9504-4d5c-835b-3fbaf78c084a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sales_logs.requester_count_ios, sales_logs.requester_count_android,
      sales_logs.requester_count_other]
    y_axes: []
    listen:
      月: sales_logs.logged_month
      日付: sales_logs.logged_date
    row: 52
    col: 0
    width: 12
    height: 8
  - name: シングルタイル-ARPU
    title: シングルタイル-ARPU
    model: chouchou_prod
    explore: derived_arpu
    type: single_value
    fields: [derived_sales_per_day.logged_date, derived_sales_per_day.arpu]
    fill_fields: [derived_sales_per_day.logged_date]
    filters:
      derived_sales_per_day.logged_date: 2 days ago for 2 days
    sorts: [derived_sales_per_day.logged_date desc]
    limit: 500
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ARPU
    comparison_label: "(前日)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [derived_sales_per_day.logged_date]
    y_axes: []
    row: 6
    col: 6
    width: 6
    height: 4
  - name: ARPU
    title: ARPU
    model: chouchou_prod
    explore: derived_arpu
    type: looker_line
    fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month,
      derived_sales_per_day.arpu, derived_sales_per_day.arpu_ios, derived_sales_per_day.arpu_android]
    pivots: [derived_sales_per_day.hidden_today_month]
    fill_fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month]
    filters:
      derived_sales_per_day.hidden_today_date: before 0 days ago
    sorts: [derived_sales_per_day.hidden_today_month desc 0, derived_sales_per_day.hidden_today_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%d"
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: ARPU
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: "(前日)"
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [derived_sales_per_day.arpu_ios, derived_sales_per_day.arpu_android]
    y_axes: []
    listen:
      月: derived_sales_per_day.hidden_today_month
      日付: derived_sales_per_day.logged_date
    row: 44
    col: 0
    width: 12
    height: 8
  - name: シングルタイル-課金率
    title: シングルタイル-課金率
    model: chouchou_prod
    explore: derived_billing_rate
    type: single_value
    fields: [derived_sales_per_day.logged_date, derived_sales_per_day.billing_rate]
    fill_fields: [derived_sales_per_day.logged_date]
    filters:
      derived_sales_per_day.logged_date: 2 days ago for 2 days
    sorts: [derived_sales_per_day.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: rate, label: rate, expression: "${derived_sales_per_day.billing_rate}",
        value_format: 0.00%, value_format_name: !!null '', _kind_hint: measure, _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 課金率
    comparison_label: "(前日)"
    series_types: {}
    defaults_version: 1
    hidden_fields: [derived_sales_per_day.logged_date, derived_sales_per_day.billing_rate]
    y_axes: []
    row: 2
    col: 18
    width: 6
    height: 4
  - name: 課金率
    title: 課金率
    model: chouchou_prod
    explore: derived_billing_rate
    type: looker_line
    fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.billing_rate,
      derived_sales_per_day.billing_rate_ios, derived_sales_per_day.billing_rate_android,
      derived_sales_per_day.hidden_today_month]
    pivots: [derived_sales_per_day.hidden_today_month]
    fill_fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month]
    filters:
      derived_sales_per_day.hidden_today_date: before 0 days ago
    sorts: [derived_sales_per_day.hidden_today_day_of_month desc, derived_sales_per_day.hidden_today_month
        desc]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    single_value_title: 課金率
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    comparison_label: "(前日)"
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [derived_sales_per_day.billing_rate_ios, derived_sales_per_day.billing_rate_android]
    y_axes: []
    listen:
      月: derived_sales_per_day.hidden_today_month
      日付: derived_sales_per_day.logged_date
    row: 36
    col: 12
    width: 12
    height: 8
  - name: 最大購入金額
    title: 最大購入金額
    model: chouchou_prod
    explore: derived_sales_per_day
    type: looker_line
    fields: [derived_sales_per_day.hidden_today_month, derived_sales_per_day.hidden_today_day_of_month,
      derived_sales_per_day.pay_amount_jpy_max, derived_sales_per_day.pay_amount_jpy_max_ios,
      derived_sales_per_day.pay_amount_jpy_max_android, derived_sales_per_day.pay_amount_jpy_max_other]
    pivots: [derived_sales_per_day.hidden_today_month]
    fill_fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month]
    filters:
      derived_sales_per_day.hidden_today_date: before 0 days ago
    sorts: [derived_sales_per_day.hidden_today_month desc, derived_sales_per_day.hidden_today_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [derived_sales_per_day.pay_amount_jpy_max_ios, derived_sales_per_day.pay_amount_jpy_max_android,
      derived_sales_per_day.pay_amount_jpy_max_other]
    defaults_version: 1
    y_axes: []
    listen:
      月: derived_sales_per_day.hidden_today_month
      日付: derived_sales_per_day.logged_date
    row: 52
    col: 12
    width: 12
    height: 8
  - name: 初回課金者数
    title: 初回課金者数
    model: chouchou_prod
    explore: derived_sales_per_day_of_first_paid
    type: looker_line
    fields: [derived_sales_per_day_of_first_paid.hidden_today_month, derived_sales_per_day_of_first_paid.hidden_today_day_of_month,
      derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay, derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_ios,
      derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_android,
      derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_other]
    pivots: [derived_sales_per_day_of_first_paid.hidden_today_month]
    fill_fields: [derived_sales_per_day_of_first_paid.hidden_today_day_of_month, derived_sales_per_day_of_first_paid.hidden_today_month]
    filters:
      derived_sales_per_day_of_first_paid.hidden_today_date: before 0 days ago
    sorts: [derived_sales_per_day_of_first_paid.hidden_today_month desc, derived_sales_per_day_of_first_paid.hidden_today_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_android,
      derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_other, derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay_ios]
    defaults_version: 1
    y_axes: []
    listen:
      月: derived_sales_per_day_of_first_paid.hidden_today_month
      日付: derived_sales_per_day_of_first_paid.logged_date
    row: 60
    col: 0
    width: 12
    height: 8
  - name: 課金額パーセンタイル
    title: 課金額パーセンタイル
    model: chouchou_prod
    explore: derived_sales_per_day
    type: looker_line
    fields: [derived_sales_per_day.logged_date, derived_sales_per_day.p10, derived_sales_per_day.p20,
      derived_sales_per_day.p30, derived_sales_per_day.p40, derived_sales_per_day.p50,
      derived_sales_per_day.p60, derived_sales_per_day.p70, derived_sales_per_day.p80,
      derived_sales_per_day.p90, derived_sales_per_day.p99]
    fill_fields: [derived_sales_per_day.logged_date]
    filters: {}
    sorts: [derived_sales_per_day.logged_date desc]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    x_axis_datetime_label: "%m/%d"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      月: derived_sales_per_day.hidden_today_month
      日付: derived_sales_per_day.logged_date
    row: 60
    col: 12
    width: 12
    height: 8
  - name: 課金額帯別ユーザー数
    title: 課金額帯別ユーザー数
    model: chouchou_prod
    explore: derived_sales_per_day
    type: looker_column
    fields: [derived_sales_per_day.logged_date, derived_sales_per_day.tiers_pay_amount_jpy,
      derived_sales_per_day.number_of_requester_id]
    pivots: [derived_sales_per_day.tiers_pay_amount_jpy]
    fill_fields: [derived_sales_per_day.logged_date, derived_sales_per_day.tiers_pay_amount_jpy]
    filters: {}
    sorts: [derived_sales_per_day.logged_date desc, derived_sales_per_day.tiers_pay_amount_jpy]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_label: 購入金額帯(円)
    series_types: {}
    x_axis_datetime_label: "%m/%d"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      月: derived_sales_per_day.hidden_today_month
      日付: derived_sales_per_day.logged_date
    row: 68
    col: 0
    width: 12
    height: 8
  - name: シングルタイル-当月売上
    title: シングルタイル-当月売上
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_month, sales_logs.pay_amount_jpy_sum]
    fill_fields: [sales_logs.logged_month]
    filters:
      sales_logs.logged_month: 2 months
      sales_logs.logged_date: before 0 days ago
    sorts: [sales_logs.logged_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: amount, label: amount, expression: "${sales_logs.pay_amount_jpy_sum}",
        value_format: "\\¥#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 当月売上
    comparison_label: "(前月)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [sales_logs.pay_amount_jpy_sum, sales_logs.logged_month]
    series_types: {}
    y_axes: []
    row: 6
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-新規PU
    title: シングルタイル-新規PU
    model: chouchou_prod
    explore: derived_sales_per_day_of_first_paid
    type: single_value
    fields: [derived_sales_per_day_of_first_paid.logged_date, derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay]
    fill_fields: [derived_sales_per_day_of_first_paid.logged_date]
    filters:
      derived_sales_per_day_of_first_paid.logged_date: 2 days ago for 2 days
    sorts: [derived_sales_per_day_of_first_paid.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: npu, label: npu, expression: "${derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 新規PU
    comparison_label: "(前日)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [derived_sales_per_day_of_first_paid.logged_date, derived_sales_per_day_of_first_paid.number_of_requester_id_firstpay]
    series_types: {}
    y_axes: []
    row: 6
    col: 12
    width: 6
    height: 4
  - name: シングルタイル-日割り売上
    title: シングルタイル-日割り売上
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_day_of_month, sales_logs.logged_month, sales_logs.pay_amount_jpy_sum]
    pivots: [sales_logs.logged_month]
    fill_fields: [sales_logs.logged_month, sales_logs.logged_day_of_month]
    filters:
      sales_logs.logged_month: 2 months
      sales_logs.logged_date: before 0 days ago
    sorts: [sales_logs.logged_month desc 0, sales_logs.logged_day_of_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: 日毎売上, label: 日毎売上, expression: 'sum(${sales_logs.pay_amount_jpy_sum})/count(${sales_logs.pay_amount_jpy_sum})',
        value_format: '"¥"#,##0', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割り売上
    comparison_label: "(前月)"
    hidden_fields: [sales_logs.logged_day_of_month, sales_logs.pay_amount_jpy_sum]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    y_axes: []
    row: 30
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-日割りARPPU
    title: シングルタイル-日割りARPPU
    model: chouchou_prod
    explore: sales_logs
    type: single_value
    fields: [sales_logs.logged_month, sales_logs.logged_day_of_month, sales_logs.arppu]
    pivots: [sales_logs.logged_month]
    fill_fields: [sales_logs.logged_day_of_month, sales_logs.logged_month]
    filters:
      sales_logs.logged_month: 2 months
      sales_logs.logged_date: before 0 days ago
    sorts: [sales_logs.logged_month desc 0, sales_logs.logged_day_of_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: 日割arppu, label: 日割りARPPU, expression: 'sum(${sales_logs.arppu})/count(${sales_logs.arppu})',
        value_format: "\\¥#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割りARPPU
    comparison_label: "(前月)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [sales_logs.arppu, sales_logs.logged_day_of_month]
    y_axes: []
    row: 26
    col: 12
    width: 6
    height: 4
  - name: シングルタイル-日割りARPU
    title: シングルタイル-日割りARPU
    model: chouchou_prod
    explore: derived_arpu
    type: single_value
    fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month,
      derived_sales_per_day.arpu]
    pivots: [derived_sales_per_day.hidden_today_month]
    fill_fields: [derived_sales_per_day.hidden_today_day_of_month, derived_sales_per_day.hidden_today_month]
    filters:
      derived_sales_per_day.hidden_today_month: 2 months
      derived_sales_per_day.hidden_today_date: before 0 days ago
    sorts: [derived_sales_per_day.hidden_today_month desc, derived_sales_per_day.hidden_today_day_of_month]
    limit: 500
    dynamic_fields: [{table_calculation: 日割arpu, label: 日割りARPU, expression: 'sum(${derived_sales_per_day.arpu})/count(${derived_sales_per_day.arpu})',
        value_format: "\\¥#,##0", value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割りARPU
    comparison_label: "(前月)"
    hidden_fields: [derived_sales_per_day.arpu, derived_sales_per_day.hidden_today_day_of_month]
    series_types: {}
    defaults_version: 1
    y_axes: []
    row: 26
    col: 18
    width: 6
    height: 4
  - name: "<span class='fa fa-file-text-o'> Sales</span>"
    type: text
    title_text: "<span class='fa fa-file-text-o'> Sales</span>"
    row: 34
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-user'> Users</span>"
    type: text
    title_text: "<span class='fa fa-user'> Users</span>"
    row: 76
    col: 0
    width: 24
    height: 2
  - name: シングルタイル-DAU
    title: シングルタイル-DAU
    model: chouchou_prod
    explore: derived_dau_per_day
    type: single_value
    fields: [derived_dau_per_day.logged_date, derived_dau_per_day.dau_count]
    fill_fields: [derived_dau_per_day.logged_date]
    filters:
      derived_dau_per_day.logged: 2 days ago for 2 days
    sorts: [derived_dau_per_day.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: dau, label: dau, expression: "${derived_dau_per_day.dau_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: DAU
    comparison_label: "(前日)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [derived_dau_per_day.dau_count, derived_dau_per_day.logged_date]
    y_axes: []
    row: 12
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-日割りDAU
    title: シングルタイル-日割りDAU
    model: chouchou_prod
    explore: derived_dau_per_day
    type: single_value
    fields: [derived_dau_per_day.hidden_today_day_of_month, derived_dau_per_day.dau_count,
      derived_dau_per_day.hidden_today_month]
    pivots: [derived_dau_per_day.hidden_today_month]
    fill_fields: [derived_dau_per_day.hidden_today_month, derived_dau_per_day.hidden_today_day_of_month]
    filters:
      derived_dau_per_day.hidden_today_date: before 0 days ago
      derived_dau_per_day.logged: 2 months
      derived_dau_per_day.hidden_today_month: 2 months
    sorts: [derived_dau_per_day.hidden_today_day_of_month, derived_dau_per_day.hidden_today_month
        desc]
    limit: 500
    dynamic_fields: [{table_calculation: 日割dau, label: 日割りDAU, expression: 'sum(${derived_dau_per_day.dau_count})
          / count(${derived_dau_per_day.dau_count})', value_format: '#,##0 "人"', value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割りDAU
    comparison_label: "(前月)"
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%d"
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [derived_dau_per_day.dau_count, derived_dau_per_day.hidden_today_day_of_month]
    y_axes: []
    row: 26
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-DNU
    title: シングルタイル-DNU
    model: chouchou_prod
    explore: new_user_logs
    type: single_value
    fields: [new_user_logs.logged_date, new_user_logs.requester_count]
    fill_fields: [new_user_logs.logged_date]
    filters:
      new_user_logs.logged_date: 2 days ago for 2 days
    sorts: [new_user_logs.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: dnu, label: dnu, expression: "${new_user_logs.requester_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: DNU
    comparison_label: "(前日)"
    hidden_fields: [new_user_logs.requester_count, new_user_logs.logged_date]
    series_types: {}
    defaults_version: 1
    y_axes: []
    row: 12
    col: 6
    width: 6
    height: 4
  - name: シングルタイル-日割りDNU
    title: シングルタイル-日割りDNU
    model: chouchou_prod
    explore: new_user_logs
    type: single_value
    fields: [new_user_logs.logged_day_of_month, new_user_logs.logged_month, new_user_logs.requester_count]
    pivots: [new_user_logs.logged_month]
    fill_fields: [new_user_logs.logged_day_of_month, new_user_logs.logged_month]
    filters:
      new_user_logs.logged_date: before 0 days ago
      new_user_logs.logged_month: 2 months
    sorts: [new_user_logs.requester_count desc 0, new_user_logs.logged_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: 日割ndu, label: 日割りNDU, expression: 'sum(${new_user_logs.requester_count})/count(${new_user_logs.requester_count})',
        value_format: '#,##0 "人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割りDNU
    comparison_label: "(前月)"
    hidden_fields: [new_user_logs.logged_day_of_month, new_user_logs.requester_count]
    series_types: {}
    defaults_version: 1
    y_axes: []
    row: 26
    col: 6
    width: 6
    height: 4
  - name: DAU
    title: DAU
    model: chouchou_prod
    explore: derived_dau_per_day
    type: looker_line
    fields: [derived_dau_per_day.dau_count, derived_dau_per_day.hidden_today_day_of_month,
      derived_dau_per_day.dau_count_ios, derived_dau_per_day.dau_count_android, derived_dau_per_day.hidden_today_month]
    pivots: [derived_dau_per_day.hidden_today_month]
    fill_fields: [derived_dau_per_day.hidden_today_day_of_month, derived_dau_per_day.hidden_today_month]
    filters:
      derived_dau_per_day.hidden_today_date: before 0 days ago
    sorts: [derived_dau_per_day.hidden_today_day_of_month, derived_dau_per_day.hidden_today_month
        desc]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%d"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: DAU
    comparison_label: "(前日)"
    defaults_version: 1
    hidden_fields: [derived_dau_per_day.dau_count_ios, derived_dau_per_day.dau_count_android]
    y_axes: []
    listen:
      月: derived_dau_per_day.logged
      日付: derived_dau_per_day.logged_date
    row: 78
    col: 0
    width: 12
    height: 8
  - name: DNU
    title: DNU
    model: chouchou_prod
    explore: new_user_logs
    type: looker_line
    fields: [new_user_logs.logged_day_of_month, new_user_logs.logged_month, new_user_logs.requester_count,
      new_user_logs.count_ios, new_user_logs.count_android]
    pivots: [new_user_logs.logged_month]
    fill_fields: [new_user_logs.logged_day_of_month, new_user_logs.logged_month]
    filters: {}
    sorts: [new_user_logs.logged_month desc, new_user_logs.logged_day_of_month]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    hidden_fields: [new_user_logs.count_ios, new_user_logs.count_android]
    defaults_version: 1
    y_axes: []
    listen:
      月: new_user_logs.logged_month
      日付: new_user_logs.logged_date
    row: 78
    col: 12
    width: 12
    height: 8
  - name: シングルタイル-FQ7以上
    title: シングルタイル-FQ7以上
    model: chouchou_prod
    explore: daily_user_logs
    type: single_value
    fields: [daily_user_logs.logged_date, daily_user_logs.fq7_over]
    fill_fields: [daily_user_logs.logged_date]
    filters:
      daily_user_logs.logged_date: 2 days ago for 2 days
    sorts: [daily_user_logs.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: fq7, label: fq7, expression: "${daily_user_logs.fq7_over}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: FQ7 and above
    value_format: '#,##0"人"'
    comparison_label: "(前日)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [daily_user_logs.logged_date, daily_user_logs.fq7_over]
    series_types: {}
    y_axes: []
    row: 20
    col: 6
    width: 6
    height: 4
  - name: シングルタイル-21日以上経過復帰ユーザー
    title: シングルタイル-21日以上経過復帰ユーザー
    model: chouchou_prod
    explore: derived_return_users
    type: single_value
    fields: [derived_return_users.count_21_over, derived_return_users.logged_date]
    fill_fields: [derived_return_users.logged_date]
    filters:
      derived_return_users.before_login: "-NULL"
      derived_return_users.logged_date: 2 days ago for 2 days
    sorts: [derived_return_users.logged_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: r21, label: r21, expression: "${derived_return_users.count_21_over}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 21日以上経過復帰ユーザー
    comparison_label: "(前日)"
    hidden_fields: [derived_return_users.logged_date, derived_return_users.count_21_over]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    y_axes: []
    row: 20
    col: 0
    width: 6
    height: 4
  - name: シングルタイル-日割りFQ7以上
    title: シングルタイル-日割りFQ7以上
    model: chouchou_prod
    explore: daily_user_logs
    type: single_value
    fields: [daily_user_logs.logged_day_of_month, daily_user_logs.logged_month, daily_user_logs.fq7_over]
    pivots: [daily_user_logs.logged_month]
    fill_fields: [daily_user_logs.logged_day_of_month, daily_user_logs.logged_month]
    filters:
      daily_user_logs.logged_date: before 0 days ago
      daily_user_logs.logged_month: 2 months
    sorts: [daily_user_logs.fq7_over desc 0, daily_user_logs.logged_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: 日割fq7, label: 日割りFQ7, expression: 'sum(${daily_user_logs.fq7_over})/count(${daily_user_logs.fq7_over})',
        value_format: '#,##0 "人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 日割りFQ7 and above
    comparison_label: "(前月)"
    hidden_fields: [daily_user_logs.logged_day_of_month, daily_user_logs.fq7_over]
    series_types: {}
    defaults_version: 1
    y_axes: []
    row: 30
    col: 6
    width: 6
    height: 4
  - name: FQ別アクティブユーザー数
    title: FQ別アクティブユーザー数
    model: chouchou_prod
    explore: daily_user_logs
    type: looker_line
    fields: [daily_user_logs.logged_date, daily_user_logs.fq1, daily_user_logs.fq2,
      daily_user_logs.fq3, daily_user_logs.fq4, daily_user_logs.fq5, daily_user_logs.fq6,
      daily_user_logs.fq7_over]
    fill_fields: [daily_user_logs.logged_date]
    filters: {}
    sorts: [daily_user_logs.logged_date desc]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%m/%d"
    defaults_version: 1
    hidden_series: [daily_user_logs.fq1]
    hidden_fields: []
    y_axes: []
    listen:
      月: daily_user_logs.logged_month
      日付: daily_user_logs.logged_date
    row: 86
    col: 0
    width: 12
    height: 8
  - name: 復帰ユーザー数
    title: 復帰ユーザー数
    model: chouchou_prod
    explore: derived_return_users
    type: looker_line
    fields: [derived_return_users.logged_date, derived_return_users.count_7_13, derived_return_users.count_11_20,
      derived_return_users.count_21_over]
    fill_fields: [derived_return_users.logged_date]
    filters:
      derived_return_users.before_login: "-NULL"
    sorts: [derived_return_users.logged_date desc]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%m/%d"
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      月: derived_return_users.hidden_today_month
      日付: derived_return_users.logged_date
    row: 86
    col: 12
    width: 12
    height: 8
  - name: 2日目継続率
    title: 2日目継続率
    model: chouchou_prod
    explore: derived_retention_rate
    type: looker_line
    fields: [derived_daily_users.login_user_count, derived_retention_rate.reg_at_date,
      derived_retention_rate.retention_rate, derived_dnu_per_day.requester_count]
    filters:
      derived_retention_rate.days_diff: '1'
      derived_daily_users.login_at_month: 2 months
      derived_retention_rate.reg_at_date: before 1 days ago
    sorts: [derived_retention_rate.reg_at_date]
    limit: 500
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    x_axis_datetime_label: "%m/%d"
    defaults_version: 1
    hidden_fields: [derived_daily_users.login_user_count]
    y_axes: []
    listen:
      月: derived_retention_rate.reg_at_month
    row: 94
    col: 0
    width: 24
    height: 8
  - name: 継続率
    title: 継続率
    model: chouchou_prod
    explore: derived_retention_rate
    type: looker_grid
    fields: [derived_retention_rate.reg_at_date, derived_retention_rate.days_diff,
      derived_retention_rate.retention_rate, derived_daily_users.login_user_count,
      derived_dnu_per_day.requester_count]
    pivots: [derived_retention_rate.days_diff]
    filters:
      derived_retention_rate.days_diff: ">=1"
      derived_retention_rate.reg_at_date: before 1 days ago
    sorts: [derived_retention_rate.reg_at_date desc 0, derived_retention_rate.days_diff]
    limit: 500
    query_timezone: Japan
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      derived_retention_rate.reg_at_date: 登録日
      derived_retention_rate.retention_rate: 継続率
      derived_retention_rate.days_diff: 経過日数
    series_column_widths:
      derived_retention_rate.reg_at_date: 82
      derived_retention_rate.retention_rate: 50
      derived_dnu_per_day.requester_count: 80
    series_cell_visualizations:
      derived_retention_rate.retention_rate:
        is_active: false
    conditional_formatting: [{type: greater than, value: 0.8, background_color: "#3EB0D5",
        font_color: "#fff", color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: [derived_retention_rate.retention_rate]}, {
        type: along a scale..., value: !!null '', background_color: "#3EB0D5", font_color: !!null '',
        color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7, palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825,
          options: {steps: 5, constraints: {max: {type: percentile, value: 93}}}},
        bold: false, italic: false, strikethrough: false, fields: [derived_retention_rate.retention_rate]}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    series_types: {}
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    x_axis_datetime_label: "%m/%d"
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [derived_daily_users.login_user_count]
    y_axes: []
    listen:
      月: derived_retention_rate.reg_at_month
    row: 102
    col: 0
    width: 24
    height: 8
  - name: "<span class='fa fa-file-text-o'> Sales Trends</span>"
    type: text
    title_text: "<span class='fa fa-file-text-o'> Sales Trends</span>"
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-file-text-o'> Daily Average</span>"
    type: text
    title_text: "<span class='fa fa-file-text-o'> Daily Average</span>"
    body_text: ''
    row: 24
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-user'> Users Trends</span>"
    type: text
    title_text: "<span class='fa fa-user'> Users Trends</span>"
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - name: シングルタイル-チュートリアル3クリアユーザー数
    title: シングルタイル-チュートリアル3クリアユーザー数
    model: chouchou_prod
    explore: persistent_tutorial_clear_count_logs
    type: single_value
    fields: [persistent_tutorial_clear_count_logs.tutorial_3_clear_count, persistent_tutorial_clear_count_logs.summary_date]
    fill_fields: [persistent_tutorial_clear_count_logs.summary_date]
    filters:
      persistent_tutorial_clear_count_logs.summary_date: 2 days ago for 2 days
    sorts: [persistent_tutorial_clear_count_logs.summary_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: cnt_t3, label: cnt_t3, expression: "${persistent_tutorial_clear_count_logs.tutorial_3_clear_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: チュートリアル3クリアユーザー数
    comparison_label: "(前日)"
    series_types: {}
    defaults_version: 1
    hidden_fields: [persistent_tutorial_clear_count_logs.tutorial_3_clear_count, persistent_tutorial_clear_count_logs.summary_date]
    y_axes: []
    row: 16
    col: 18
    width: 6
    height: 4
  - name: シングルタイル-チュートリアル2クリア率
    title: シングルタイル-チュートリアル2クリア率
    model: chouchou_prod
    explore: persistent_tutorial_clear_count_logs
    type: single_value
    fields: [persistent_tutorial_clear_count_logs.tutorial_2_clear_rate, persistent_tutorial_clear_count_logs.summary_date]
    fill_fields: [persistent_tutorial_clear_count_logs.summary_date]
    filters:
      persistent_tutorial_clear_count_logs.summary_date: 2 days ago for 2 days
    sorts: [persistent_tutorial_clear_count_logs.summary_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: rate_t2, label: rate_t2, expression: "${persistent_tutorial_clear_count_logs.tutorial_2_clear_rate}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: チュートリアル2クリア率
    comparison_label: "(前日)"
    series_types: {}
    defaults_version: 1
    hidden_fields: [persistent_tutorial_clear_count_logs.tutorial_2_clear_rate, persistent_tutorial_clear_count_logs.summary_date]
    y_axes: []
    row: 16
    col: 6
    width: 6
    height: 4
  - name: シングルタイル-チュートリアル3クリア率
    title: シングルタイル-チュートリアル3クリア率
    model: chouchou_prod
    explore: persistent_tutorial_clear_count_logs
    type: single_value
    fields: [persistent_tutorial_clear_count_logs.tutorial_3_clear_rate, persistent_tutorial_clear_count_logs.summary_date]
    fill_fields: [persistent_tutorial_clear_count_logs.summary_date]
    filters:
      persistent_tutorial_clear_count_logs.summary_date: 2 days ago for 2 days
    sorts: [persistent_tutorial_clear_count_logs.summary_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: rate_t3, label: rate_t3, expression: "${persistent_tutorial_clear_count_logs.tutorial_3_clear_rate}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: チュートリアル3クリア率
    comparison_label: "(前日)"
    series_types: {}
    defaults_version: 1
    hidden_fields: [persistent_tutorial_clear_count_logs.tutorial_3_clear_rate, persistent_tutorial_clear_count_logs.summary_date]
    y_axes: []
    row: 16
    col: 12
    width: 6
    height: 4
  - name: シングルタイル-チュートリアル1クリア率
    title: シングルタイル-チュートリアル1クリア率
    model: chouchou_prod
    explore: persistent_tutorial_clear_count_logs
    type: single_value
    fields: [persistent_tutorial_clear_count_logs.tutorial_1_clear_rate, persistent_tutorial_clear_count_logs.summary_date]
    fill_fields: [persistent_tutorial_clear_count_logs.summary_date]
    filters:
      persistent_tutorial_clear_count_logs.summary_date: 1 days ago for 1 days
    sorts: [persistent_tutorial_clear_count_logs.summary_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: rate_t1, label: rate_t1, expression: "${persistent_tutorial_clear_count_logs.tutorial_1_clear_rate}",
        value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: チュートリアル1クリア率
    comparison_label: "(前日)"
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    row: 16
    col: 0
    width: 6
    height: 4
  - name: 売上 日別・累計
    title: 売上 日別・累計
    model: chouchou_prod
    explore: sales_logs
    type: looker_column
    fields: [sales_logs.logged_day_of_month, sales_logs.pay_amount_jpy_sum, sales_logs.logged_month]
    pivots: [sales_logs.logged_month]
    fill_fields: [sales_logs.logged_day_of_month, sales_logs.logged_month]
    filters:
      sales_logs.logged_month: 2 months
      sales_logs.logged_date: before 0 days ago
    sorts: [sales_logs.logged_month desc, sales_logs.logged_day_of_month]
    limit: 500
    dynamic_fields: [{table_calculation: 累積売上, label: 累積売上, expression: 'running_total(${sales_logs.pay_amount_jpy_sum})',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}, {table_calculation: 当月日別売上, label: 当月日別売上, expression: 'pivot_index(${sales_logs.pay_amount_jpy_sum},1)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: 当月累計, label: 当月累計, expression: 'pivot_index(${累積売上},1)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: 前月日別売上, label: 前月日別売上, expression: 'pivot_index(${sales_logs.pay_amount_jpy_sum},2)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: supermeasure,
        _type_hint: number}, {table_calculation: 前月累計, label: 前月累計, expression: 'pivot_index(${累積売上},2)',
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: supermeasure,
        _type_hint: number}]
    query_timezone: Japan
    x_axis_gridlines: true
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: 日別売上, orientation: left, series: [{axisId: 当月日別売上, id: 当月日別売上,
            name: 当月日別売上}, {axisId: 前月日別売上, id: 前月日別売上, name: 前月日別売上}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: 累積売上, orientation: right, series: [{axisId: 当月累計, id: 当月累計, name: 当月累計},
          {axisId: 前月累計, id: 前月累計, name: 前月累計}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
    series_types:
      2020-08 - 累積売上: line
      2020-07 - 累積売上: line
      2020-09 - 累積売上: line
      当月累計: line
      前月累計: line
    series_colors:
      2020-08 - 累積売上: "#C9DC10"
      2020-07 - sales_logs.pay_amount_jpy_sum: "#149888"
      2020-07 - 累積売上: "#C9DC10"
      2020-09 - 累積売上: "#2B99F7"
      2020-08 - sales_logs.pay_amount_jpy_sum: "#08B248"
      当月累計: "#2B99F7"
      前月日別売上: "#08B248"
      前月累計: "#C9DC10"
    series_labels:
      2020-08 - 累積売上: 前月累計売上
      2020-08 - sales_logs.pay_amount_jpy_sum: 前月日別売上
      2020-07 - sales_logs.pay_amount_jpy_sum: 前月日別売上
      2020-07 - 累積売上: 前月累計売上
      2020-09 - sales_logs.pay_amount_jpy_sum: 当月売上
      2020-09 - 累積売上: 当月累計売上
    x_axis_datetime_label: "%d"
    show_null_points: false
    interpolation: linear
    defaults_version: 1
    hidden_fields: [sales_logs.pay_amount_jpy_sum, 累積売上]
    row: 36
    col: 0
    width: 12
    height: 8
  - name: シングルタイル-MAU
    title: シングルタイル-MAU
    model: chouchou_prod
    explore: derived_dau_users
    type: single_value
    fields: [derived_dau_users.dau_count, derived_dau_users.hidden_today_month]
    fill_fields: [derived_dau_users.hidden_today_month]
    filters:
      derived_dau_users.hidden_today_date: before 0 days ago
      derived_dau_users.hidden_today_month: 2 months
    sorts: [derived_dau_users.hidden_today_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: mau, label: MAU, expression: "${derived_dau_users.dau_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: MAU
    comparison_label: "(前月)"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [derived_dau_users.hidden_today_month, derived_dau_users.dau_count]
    y_axes: []
    row: 12
    col: 12
    width: 6
    height: 4
  - name: シングルタイル-MNU
    title: シングルタイル-MNU
    model: chouchou_prod
    explore: new_user_logs
    type: single_value
    fields: [new_user_logs.requester_count, new_user_logs.logged_month]
    fill_fields: [new_user_logs.logged_month]
    filters:
      new_user_logs.logged_date: before 0 days ago
      new_user_logs.logged_month: 2 months
    sorts: [new_user_logs.logged_month desc]
    limit: 500
    dynamic_fields: [{table_calculation: mnu, label: mnu, expression: "${new_user_logs.requester_count}",
        value_format: '#,##0"人"', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: Japan
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: MNU
    comparison_label: "(前月)"
    hidden_fields: [new_user_logs.requester_count, new_user_logs.logged_month]
    series_types: {}
    defaults_version: 1
    y_axes: []
    row: 12
    col: 18
    width: 6
    height: 4
  filters:
  - name: 月
    title: 月
    type: date_filter
    default_value: 2 months
    allow_multiple_values: true
    required: false
  - name: 日付
    title: 日付
    type: date_filter
    default_value: before 0 days ago
    allow_multiple_values: true
    required: false
