- dashboard: '2___'
  title: 2_매장 판매 현황
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  preferred_slug: diIjtbGhJAprXPmcbhsXHg
  elements:
  - title: Sales
    name: Sales
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}, {table_calculation: target, label: Target, expression: 'round(${transactions__line_items.total_sales}*1.1/1000,0)*1000',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 연간 목표금액 도달 비율
    comparison_label: "."
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions, vs_ly]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 5
    col: 0
    width: 6
    height: 3
  - title: Transactions
    name: Transactions
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions.number_of_transactions}/offset(${transactions.number_of_transactions},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 매출 수량
    series_types: {}
    hidden_fields: [transactions__line_items.average_basket_size, transactions.percent_customer_transactions,
      transactions__line_items.total_sales]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 5
    col: 6
    width: 6
    height: 3
  - title: Basket Size
    name: Basket Size
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.average_basket_size}/offset(${transactions__line_items.average_basket_size},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 평균 구매비용
    series_types: {}
    hidden_fields: [transactions.percent_customer_transactions, transactions__line_items.total_sales,
      transactions.number_of_transactions]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 5
    col: 12
    width: 6
    height: 3
  - title: "% Trx from Loyalty"
    name: "% Trx from Loyalty"
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.percent_customer_transactions]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions.percent_customer_transactions}-offset(${transactions.percent_customer_transactions},1)",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 회원 구매 비율
    series_types: {}
    hidden_fields: [transactions__line_items.total_sales, transactions.number_of_transactions,
      transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 5
    col: 18
    width: 6
    height: 3
  - title: 매장별 판매 비율
    name: 매장별 판매 비율
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: looker_map
    fields: [stores.location, transactions__line_items.total_sales, transactions.number_of_transactions,
      stores.name, customers.id]
    filters: {}
    sorts: [transactions.number_of_transactions desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_value_colors: ["#aaa", "#5930c2"]
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    series_types: {}
    hidden_fields:
    defaults_version: 1
    listen:
      기간: transactions.transaction_date
    row: 8
    col: 10
    width: 14
    height: 9
  - title: 전년 대비 매장 별 증감율
    name: 전년 대비 매장 별 증감율
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: looker_bar
    fields: [stores.name, transactions__line_items.sales_change]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
    sorts: [transactions__line_items.sales_change desc]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 2cf23ac7-6136-e038-cb59-0b0d03864953
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#4fd3f0"
        - "#04b5cc"
        - "#009688"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: transactions__line_items.sales_change,
            id: transactions__line_items.sales_change, name: Sales Change (%)}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 지점 명
    series_types: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    hidden_fields:
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 21
    col: 0
    width: 12
    height: 13
  - title: 전년 대비 품목 별 증감율
    name: 전년 대비 품목 별 증감율
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: looker_bar
    fields: [transactions__line_items.sales_change, products.category]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      products.category: "-NULL"
    sorts: [transactions__line_items.sales_change desc]
    limit: 500
    column_limit: 50
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
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 91999ca4-f13f-8b66-db6b-db77995d1766
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#4fd3f0"
        - "#04b5cc"
        - "#009688"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: transactions__line_items.sales_change,
            id: transactions__line_items.sales_change, name: Sales Change (%)}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: 품목 명
    series_types: {}
    series_colors: {}
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_radius_min: 3
    map_marker_radius_max: 20
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#aaa", "#5930c2"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    color_range: ["#5A30C2", "#9d81e6", "#2D2442", "#42248F", "#1F1142"]
    color_by: root
    show_null_points: true
    hidden_fields:
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 21
    col: 12
    width: 12
    height: 13
  - name: "<span class='fa fa-random'> 전년 대비 증감율 </span>"
    type: text
    title_text: "<span class='fa fa-random'> 전년 대비 증감율 </span>"
    subtitle_text: <font color="#5b30c2">작년 대비 매장별, 품목별 판매 증감율 확인</font>
    body_text: |-
      <center><strong>사용법: </strong>
      원하시는 항목을 클릭하시면 해당 내역에 대한 보다 자세한 결과를 얻으실 수 있습니다. </center>
    row: 17
    col: 0
    width: 24
    height: 4
  - name: "<span class='fa fa-users'>고객 분류별 분석</span>"
    type: text
    title_text: "<span class='fa fa-users'>고객 분류별 분석</span>"
    subtitle_text: <font color="#5b30c2">고객 분류별 거래액 및 재방문 비율</font>
    body_text: |-
      <center><strong>사용법: </strong>
      원하시는 항목을 클릭하시면 해당 내역에 대한 보다 자세한 결과를 얻으실 수 있습니다.</center>
    row: 34
    col: 0
    width: 24
    height: 4
  - title: Emerging Millennials 🥑
    name: Emerging Millennials 🥑
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size,
      customer_clustering_prediction.customer_segment]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Emerging Millennials%
    sorts: [customer_clustering_prediction.customer_segment, transactions.selected_comparison
        desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: MZ 세대
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size,
      transactions.selected_comparison]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 38
    col: 0
    width: 6
    height: 4
  - title: Regular Gen Xers 🛒
    name: Regular Gen Xers 🛒
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Regular Gen Xers%
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 중장년층
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 38
    col: 6
    width: 6
    height: 4
  - title: One-off locals 🏪
    name: One-off locals 🏪
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: One-off locals%
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 지역 거주민
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 42
    col: 6
    width: 6
    height: 5
  - title: Affluent Retirees 👴
    name: Affluent Retirees 👴
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: single_value
    fields: [transactions.selected_comparison, transactions__line_items.total_sales,
      transactions.number_of_transactions, transactions__line_items.average_basket_size]
    filters:
      transactions.transaction_date: 2 years
      transactions.comparison_type: year
      transactions.selected_comparison: "-NULL"
      customer_clustering_prediction.customer_segment: Affluent Retirees%
    sorts: [transactions.selected_comparison desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: vs_ly, label: vs LY, expression: "${transactions__line_items.total_sales}/offset(${transactions__line_items.total_sales},1)-1",
        value_format: !!null '', value_format_name: percent_1, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 노년층
    series_types: {}
    hidden_fields: [transactions.number_of_transactions, transactions__line_items.average_basket_size]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 42
    col: 0
    width: 6
    height: 5
  - title: 첫 거래 후 고객 분류별 재방문 비율
    name: 첫 거래 후 고객 분류별 재방문 비율
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: looker_line
    fields: [transactions.months_since_first_customer_transaction, transactions.number_of_customers,
      customer_clustering_prediction.customer_segment]
    pivots: [customer_clustering_prediction.customer_segment]
    filters:
      transactions.transaction_date: 12 months
      transactions.months_since_first_customer_transaction: "<=12"
      customer_clustering_prediction.customer_segment: "-NULL"
    sorts: [transactions.months_since_first_customer_transaction, customer_clustering_prediction.customer_segment]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: percent_of_customers, label: Percent of Customers,
        expression: "${transactions.number_of_customers}/index(${transactions.number_of_customers},1)",
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
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
    interpolation: monotone
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 7697335c-a9b7-5dd1-9525-d094e796d1b6
        label: Custom
        type: discrete
        colors:
        - "#5A30C2"
        - "#b885f7"
        - "#0d071c"
        - "#d852db"
        - "#4CAF50"
        - "#8BC34A"
        - "#CDDC39"
        - "#FFEB3B"
        - "#9E9E9E"
        - "#607D8B"
        - "#607D8B"
      options:
        steps: 5
    y_axes: [{label: 재방문 비율, orientation: left, series: [{axisId: percent_of_customers,
            id: Affluent Retirees 👴 - 1 - percent_of_customers, name: 노년층}, {axisId: percent_of_customers,
            id: Regular Gen Xers 🛒 - 2 - percent_of_customers, name: 중장년층}, {axisId: percent_of_customers,
            id: Emerging Millennials 🥑 - 3 - percent_of_customers, name: MZ 세대},
          {axisId: percent_of_customers, id: One-off locals 🏪 - 4 - percent_of_customers,
            name: 지역 거주민}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: 월별
    series_colors: {}
    series_labels:
      Affluent Retirees 👴 - 1 - percent_of_customers: 노년층
      Regular Gen Xers 🛒 - 2 - percent_of_customers: 중장년층
      Emerging Millennials 🥑 - 3 - percent_of_customers: MZ 세대
      One-off locals 🏪 - 4 - percent_of_customers: 지역 거주민
    hidden_fields: [transactions.number_of_customers]
    defaults_version: 1
    listen:
      기간: transactions.date_comparison_filter
    row: 38
    col: 12
    width: 12
    height: 9
  - name: "<span class='fa fa-eye'> 총 매출 현황 </span>"
    type: text
    title_text: "<span class='fa fa-eye'> 총 매출 현황 </span>"
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 5
    width: 12
    height: 2
  - name: <img src="https://imgnewmegazonecom/2020/07/MEGAZONECLOUD_NEW_CI_Bpng" height="75">
    type: text
    title_text: <img src="https://imgnew.megazone.com/2020/07/MEGAZONECLOUD_NEW_CI_B.png"
      height="75">
    subtitle_text: ''
    body_text: ''
    row: 3
    col: 17
    width: 7
    height: 2
  - title: 연도별 판매금액
    name: 연도별 판매금액
    model: Looker_Demo_retail_block_model
    explore: transactions
    type: looker_line
    fields: [transactions__line_items.total_sales, transactions.transaction_month_num,
      transactions.transaction_year]
    pivots: [transactions.transaction_year]
    fill_fields: [transactions.transaction_month_num, transactions.transaction_year]
    filters:
      transactions.transaction_date: 4 years
      transactions.transaction_month: before 0 months ago
    sorts: [transactions__line_items.total_sales desc 0, transactions.transaction_year]
    limit: 500
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    y_axes: [{label: 총 판매금액, orientation: left, series: [{axisId: transactions__line_items.total_sales,
            id: 2019 - transactions__line_items.total_sales, name: '2019'}, {axisId: transactions__line_items.total_sales,
            id: 2020 - transactions__line_items.total_sales, name: '2020'}, {axisId: transactions__line_items.total_sales,
            id: 2021 - transactions__line_items.total_sales, name: '2021'}, {axisId: transactions__line_items.total_sales,
            id: 2022 - transactions__line_items.total_sales, name: '2022'}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    defaults_version: 1
    note_state: collapsed
    note_display: above
    note_text: "※연도별 분석이므로 기간 필터는 적용되지 않습니다."
    listen: {}
    row: 8
    col: 0
    width: 10
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"
       href="/dashboards/4?Browser=&Traffic+Source=&Date=2+weeks">1_웹페이지 접속자 분석</a>

        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;"   href="https://trial.looker.com/dashboards/67?Date=7+days">2_매장 판매 현황</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"   href="/dashboards/69?Product+Level=product&Analysis+Timeframe=90+days&Focus+Product=&Minimum+Purchase+Frequency=>%3D0.005&Focus+Category=">3_제품 판매 현황</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"    href="/dashboards/116?%EC%83%81%EB%8B%B4%EC%9B%90+%EB%AA%85=Tonya+Koop&%EA%B3%A0%EA%B0%9D+%EC%97%B0%EB%A0%B9%EB%8C%80=&%EC%97%85%EB%AC%B4+%EA%B8%B0%EA%B0%84=2021%2F06%2F01+to+2022%2F06%2F11 ">4_상담원 평가</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 3
  filters:
  - name: 기간
    title: 기간
    type: date_filter
    default_value: 7 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
