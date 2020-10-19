- dashboard: kpi
  title: 日次KPI
  layout: newspaper
  preferred_viewer: dashboards
  elements:
  - title: シングルタイル-売上
    name: シングルタイル-売上
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
    listen: {}
    row: 22
    col: 0
    width: 6
    height: 4
  - title: シングルタイル-当月売上
    name: シングルタイル-当月売上
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
    listen: {}
    row: 26
    col: 0
    width: 6
    height: 4
  - title: シングルタイル-PU
    name: シングルタイル-PU
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
    listen: {}
    row: 22
    col: 9
    width: 3
    height: 4
  - title: シングルタイル-ARPPU
    name: シングルタイル-ARPPU
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
    listen: {}
    row: 26
    col: 6
    width: 3
    height: 4
  - title: シングルタイル-ARPU
    name: シングルタイル-ARPU
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
    listen: {}
    row: 22
    col: 6
    width: 3
    height: 4
  - title: シングルタイル-課金率
    name: シングルタイル-課金率
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
    listen: {}
    row: 26
    col: 9
    width: 3
    height: 4
  - title: シングルタイル-DAU
    name: シングルタイル-DAU
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
    listen: {}
    row: 2
    col: 0
    width: 6
    height: 4
  - title: シングルタイル-DNU
    name: シングルタイル-DNU
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
    listen: {}
    row: 6
    col: 0
    width: 6
    height: 4
  - title: シングルタイル-MAU
    name: シングルタイル-MAU
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
    listen: {}
    row: 2
    col: 6
    width: 6
    height: 4
  - title: 当月売上
    name: 当月売上
    model: chouchou_prod
    explore: sales_logs
    type: looker_column
    fields: [sales_logs.logged_date, sales_logs.pay_amount_jpy_sum]
    fill_fields: [sales_logs.logged_date]
    filters:
      sales_logs.logged_date: 30 days ago for 30 days
    sorts: [sales_logs.logged_date]
    limit: 500
    dynamic_fields: [{table_calculation: 累計, label: 累計, expression: 'running_total(${sales_logs.pay_amount_jpy_sum})',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
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
    y_axes: [{label: '', orientation: left, series: [{axisId: sales_logs.pay_amount_jpy_sum,
            id: sales_logs.pay_amount_jpy_sum, name: 購入金額合計(日本円)}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: 累計, id: 累計, name: 累計}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        type: linear}]
    series_types:
      累計: line
    x_axis_datetime_label: "%m/%d"
    defaults_version: 1
    hidden_fields: []
    title_hidden: true
    listen: {}
    row: 22
    col: 12
    width: 12
    height: 8
  - title: DAU/DNU 推移
    name: DAU/DNU 推移
    model: gaming
    explore: events
    type: looker_line
    fields: [events.number_of_new_users, events.event_date, events.number_of_users]
    fill_fields: [events.event_date]
    filters: {}
    sorts: [events.event_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
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
    color_application:
      collection_id: 611da387-0e33-4239-aef0-a187c149cf88
      palette_id: f31efe28-e698-428c-8420-fcb37f2010aa
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: events.number_of_new_users,
            id: events.number_of_new_users, name: インストール}, {axisId: events.number_of_users,
            id: events.number_of_users, name: アクティブ}], showLabels: true, showValues: true,
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: log}]
    series_types: {}
    series_colors: {}
    series_labels:
      events.number_of_users: アクティブ
      events.number_of_new_users: インストール
    swap_axes: false
    defaults_version: 1
    title_hidden: true
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 2
    col: 12
    width: 12
    height: 8
  - title: D1& D7 継続率
    name: D1& D7 継続率
    model: gaming
    explore: events
    type: looker_line
    fields: [events.d1_retention_rate, user_facts.player_first_seen_date, events.d7_retention_rate]
    filters:
      user_facts.player_first_seen_date: 30 days ago for 30 days
    sorts: [user_facts.player_first_seen_date desc]
    limit: 500
    column_limit: 50
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
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: linear
    color_application:
      collection_id: 611da387-0e33-4239-aef0-a187c149cf88
      palette_id: f31efe28-e698-428c-8420-fcb37f2010aa
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{id: events.d1_retention_rate,
            name: D1 Retention Rate, axisId: events.d1_retention_rate}], showLabels: true,
        showValues: true, maxValue: !!null '', minValue: !!null '', unpinAxis: false,
        tickDensity: default, type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: '1'
    series_types: {}
    series_labels:
      events.d1_retention_rate: D1
      events.d7_retention_rate: D7
    reference_lines: []
    value_labels: labels
    label_type: labPer
    inner_radius: 60
    hidden_fields: []
    defaults_version: 1
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 12
    col: 4
    width: 20
    height: 8
  - title: D1 継続率
    name: D1 継続率
    model: gaming
    explore: events
    type: single_value
    fields: [events.d1_retention_rate]
    filters:
      user_facts.player_first_seen_date: 30 days ago for 30 days
    limit: 500
    column_limit: 50
    note_state: collapsed
    note_display: hover
    note_text: D1 % = session on D1/ session on D0
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 12
    col: 0
    width: 4
    height: 2
  - title: D7 継続率
    name: D7 継続率
    model: gaming
    explore: events
    type: single_value
    fields: [events.d7_retention_rate]
    filters:
      user_facts.player_first_seen_date: 30 days ago for 30 days
    limit: 500
    column_limit: 50
    note_state: collapsed
    note_display: hover
    note_text: D7 % = session on D7/ session on D0
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 14
    col: 0
    width: 4
    height: 2
  - title: D14 継続率
    name: D14 継続率
    model: gaming
    explore: events
    type: single_value
    fields: [events.d14_retention_rate]
    filters:
      user_facts.player_first_seen_date: 30 days ago for 30 days
    limit: 500
    column_limit: 50
    note_state: collapsed
    note_display: hover
    note_text: D14 % = session on D14/ session on D0
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 16
    col: 0
    width: 4
    height: 2
  - title: D30 継続率
    name: D30 継続率
    model: gaming
    explore: events
    type: single_value
    fields: [events.d14_retention_rate]
    filters:
      user_facts.player_first_seen_date: 30 days ago for 30 days
    limit: 500
    column_limit: 50
    note_state: collapsed
    note_display: hover
    note_text: D14 % = session on D14/ session on D0
    listen:
      Date Range: events.event_date
      Platform: events.device_platform
      Game: events.game_name
    row: 18
    col: 0
    width: 4
    height: 2
  - name: "<span class='fa fa-users'> ユーザーKPI </span>"
    type: text
    title_text: "<span class='fa fa-users'> ユーザーKPI </span>"
    subtitle_text: 新しいファンはどれくらい生まれましたか？
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-smile-o'> 継続率 </span>"
    type: text
    title_text: "<span class='fa fa-smile-o'> 継続率 </span>"
    subtitle_text: ゲームを続けてくれていますか？
    row: 10
    col: 0
    width: 24
    height: 2
  - name: "<span class='fa fa-usd'> マネタイズ </span>"
    type: text
    title_text: "<span class='fa fa-usd'> マネタイズ </span>"
    subtitle_text: お金を使ってくれていますか？
    row: 20
    col: 0
    width: 24
    height: 2
  - title: シングルタイル-MAU
    name: シングルタイル-MAU (2)
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
    listen: {}
    row: 6
    col: 6
    width: 6
    height: 4
  filters:
  - name: Date Range
    title: 日付範囲
    type: field_filter
    default_value: 30 days ago for 30 days
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gaming
    explore: events
    listens_to_filters: []
    field: events.event_date
  - name: Platform
    title: プラットフォーム
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gaming
    explore: events
    listens_to_filters: []
    field: events.device_platform
  - name: Game
    title: Game
    type: field_filter
    default_value: chouchou_prod_clog
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: gaming
    explore: events
    listens_to_filters: []
    field: events.game_name
