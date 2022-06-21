- dashboard: '3___'
  title: 3_제품 판매 현황
  layout: newspaper
  preferred_viewer: dashboards
  description: ''
  preferred_slug: Ipxk660N88jaUxsHolxRts
  elements:
  - title: 마진 별 제품 세그먼트 분석
    name: 마진 별 제품 세그먼트 분석
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: looker_scatter
    fields: [order_purchase_affinity.product_a_average_rest_of_basket_margin, order_purchase_affinity.product_a_order_frequency,
      order_purchase_affinity.product_a_order_count, order_purchase_affinity.product_a]
    filters: {}
    sorts: [order_purchase_affinity.product_a_order_count desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: b6cd43f7-2a37-3289-6c70-2de144292004
        label: Custom
        type: discrete
        colors:
        - "#5a30c2"
      options:
        steps: 5
    y_axes: [{label: 평균 장바구니 마진, orientation: left, series: [{axisId: order_purchase_affinity.product_a_average_rest_of_basket_margin,
            id: order_purchase_affinity.product_a_average_rest_of_basket_margin, name: Product
              A Average Rest of Basket Margin}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: 제품 주문 횟수
    series_types: {}
    series_colors: {}
    reference_lines: []
    trend_lines: []
    interpolation: step
    hidden_fields: [order_purchase_affinity.product_a, order_purchase_affinity.product_a_order_frequency]
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_a_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
    row: 4
    col: 15
    width: 9
    height: 8
  - title: 인기 제품 목록
    name: 인기 제품 목록
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: table
    fields: [order_purchase_affinity.product_a, order_purchase_affinity.product_a_average_rest_of_basket_margin,
      order_purchase_affinity.product_a_order_frequency, order_purchase_affinity.product_a_order_count,
      order_purchase_affinity.product_a_percent_purchased_by_loyalty_customer]
    filters: {}
    sorts: [order_purchase_affinity.product_a_average_rest_of_basket_margin desc]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      order_purchase_affinity.product_a: 제품명
      order_purchase_affinity.product_a_average_rest_of_basket_margin: 평균 장바구니 마진
      order_purchase_affinity.product_a_order_frequency: 구매 빈도율
      order_purchase_affinity.product_a_order_count: 주문 수
      order_purchase_affinity.product_a_percent_purchased_by_loyalty_customer: VIP
        회원 구매 비율
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: 0beedf53-60ed-7e3d-6b1e-9800cfe27788, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [order_purchase_affinity.product_a_average_rest_of_basket_margin]}]
    subtotals_at_bottom: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: step
    hidden_fields:
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_a_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
    row: 4
    col: 3
    width: 12
    height: 8
  - name: 인기 품목 확인
    type: text
    title_text: 인기 품목 확인
    subtitle_text: ''
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: 인기 없는 품목
    body_text: ''
    row: 26
    col: 0
    width: 24
    height: 2
  - title: 추천 제거 항목
    name: 추천 제거 항목
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: table
    fields: [order_purchase_affinity.product_a, order_purchase_affinity.product_a_order_frequency,
      order_purchase_affinity.product_a_average_basket_margin, order_purchase_affinity.product_a_percent_purchased_by_loyalty_customer,
      order_purchase_affinity.product_a_percent_customer_exclusivity, order_purchase_affinity.product_a_image]
    filters: {}
    sorts: [order_purchase_affinity.product_a_order_frequency]
    limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      order_purchase_affinity.product_a: 제품명
      order_purchase_affinity.product_a_order_frequency: 구매 빈도율
      order_purchase_affinity.product_a_average_basket_margin: 평균 장바구니 마진
      order_purchase_affinity.product_a_image: 제품 사진
      order_purchase_affinity.product_a_percent_purchased_by_loyalty_customer: VIP
        판매량
      order_purchase_affinity.product_a_percent_customer_exclusivity: 재구매률
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: e957ced6-3159-da29-15b3-b19b2036f209, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#bf402c", offset: 100}]},
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: [order_purchase_affinity.product_a_order_frequency]}, {type: along
          a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {
            id: 62da82c5-db03-598f-d9d2-24c05cea68bc, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#bf402c", offset: 100}]},
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: [order_purchase_affinity.product_a_average_basket_margin]}, {type: along
          a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {
            id: 33756f45-fbc4-92e6-96c6-32bc11615cf8, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#bf402c", offset: 100}]},
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: [order_purchase_affinity.product_a_percent_purchased_by_loyalty_customer]},
      {type: along a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {
            id: 721b90d4-be82-368f-b843-70e922627449, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#bf402c", offset: 100}]},
          options: {steps: 5, reverse: true}}, bold: false, italic: false, strikethrough: false,
        fields: [order_purchase_affinity.product_a_percent_customer_exclusivity]}]
    subtotals_at_bottom: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: step
    hidden_fields:
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_a_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
    row: 28
    col: 3
    width: 21
    height: 11
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "**사용법: ** \n진하게 <font color=\"green\">초록색</font> 으로 색칠된 항목은 자주 팔릴\
      \ 뿐만 아니라, 큰 이윤을 창출하는 제품입니다. 제품을 클릭하면  해당 제품의 번들 상품을 추천받으실 수 있습니다. "
    row: 4
    col: 0
    width: 3
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "**사용법 : **\n진한 <font color=\"#bf402c\">붉은색</font> 을 나타낼 수록, 해당 품목은\
      \ 재고에서 제거하는 것을 추천드립니다. \n\n해당 경우들은 다음과 같습니다.\n\n- 자주 판매되지 않습니다.\n\n- 적은 장바구니\
      \ 마진을 보여줍니다.\n\n- 재구매 확률이 적습니다.\n\n- VIP 고객의 선호대상품목이 아닙니다"
    row: 28
    col: 0
    width: 3
    height: 11
  - title: 연관 제품 세그먼트 분석
    name: 연관 제품 세그먼트 분석
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: looker_scatter
    fields: [order_purchase_affinity.product_b, order_purchase_affinity.product_b_average_rest_of_basket_margin,
      order_purchase_affinity.lift, order_purchase_affinity.product_b_order_frequency]
    filters: {}
    sorts: [order_purchase_affinity.lift desc]
    limit: 50
    query_timezone: America/Los_Angeles
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: f14810d2-98d7-42df-82d0-bc185a074e42
      custom:
        id: 99ec795f-cfc7-8237-d8b8-b11d96625502
        label: Custom
        type: discrete
        colors:
        - "#5a30c2"
      options:
        steps: 5
    y_axes: [{label: 평균 장바구니 마진, orientation: left, series: [{axisId: order_purchase_affinity.product_b_average_rest_of_basket_margin,
            id: order_purchase_affinity.product_b_average_rest_of_basket_margin, name: Product
              B Average Rest of Basket Margin}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: 향상도(Lift)
    series_types: {}
    series_colors: {}
    reference_lines: []
    trend_lines: []
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: true
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: 0beedf53-60ed-7e3d-6b1e-9800cfe27788, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}]
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    interpolation: step
    hidden_fields: [order_purchase_affinity.product_b]
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_b_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
      Focus Product: order_purchase_affinity.product_a
    row: 16
    col: 13
    width: 11
    height: 9
  - title: 연관 제품 순위
    name: 연관 제품 순위
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: table
    fields: [order_purchase_affinity.product_b, order_purchase_affinity.product_b_average_rest_of_basket_margin,
      order_purchase_affinity.lift, order_purchase_affinity.product_b_order_frequency]
    filters: {}
    sorts: [order_purchase_affinity.lift desc]
    limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      order_purchase_affinity.product_b: 제품명
      order_purchase_affinity.product_b_average_rest_of_basket_margin: 평균 장바구니 마진
      order_purchase_affinity.lift: 향상도(Lift)
      order_purchase_affinity.product_b_order_frequency: 구매 빈도율
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: 0beedf53-60ed-7e3d-6b1e-9800cfe27788, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [order_purchase_affinity.lift]},
      {type: along a scale..., value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {
            id: 42c42989-a24b-cae4-b890-84b06c7d20ed, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [order_purchase_affinity.product_b_average_rest_of_basket_margin]}]
    subtotals_at_bottom: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: step
    hidden_fields:
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_b_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
      Focus Product: order_purchase_affinity.product_a
    row: 16
    col: 3
    width: 10
    height: 9
  - title: Focus Product
    name: Focus Product
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: single_value
    fields: [order_purchase_affinity.product_a]
    filters: {}
    sorts: [order_purchase_affinity.product_a]
    limit: 50
    dynamic_fields: [{table_calculation: focus_product, label: Focus Product, expression: 'if(count(${order_purchase_affinity.product_a})=1,${order_purchase_affinity.product_a},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        _type_hint: string}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: 선택 제품
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: 0beedf53-60ed-7e3d-6b1e-9800cfe27788, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}, {type: along a scale...,
        value: !!null '', background_color: !!null '', font_color: !!null '', color_application: {
          collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {id: 42c42989-a24b-cae4-b890-84b06c7d20ed,
            label: Custom, type: continuous, stops: [{color: "#ffffff", offset: 0},
              {color: "#83ff80", offset: 50}, {color: "#06bf23", offset: 100}]}, options: {
            steps: 5}}, bold: false, italic: false, strikethrough: false, fields: []}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    subtotals_at_bottom: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: step
    hidden_fields: [order_purchase_affinity.product_a]
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_a_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
      Focus Product: order_purchase_affinity.product_a
    row: 14
    col: 3
    width: 10
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: 선택한 제품의 번들 상품 추천
    body_text: ''
    row: 12
    col: 0
    width: 24
    height: 2
  - title: Margin Uplift from Top 5 Promotions in Category
    name: Margin Uplift from Top 5 Promotions in Category
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    type: single_value
    fields: [order_purchase_affinity.product_b, order_purchase_affinity.product_a_total_margin,
      order_purchase_affinity.product_b_total_basket_margin, order_purchase_affinity.lift,
      assumed_promotion_uptake, margin_uplift_from_promotion]
    filters: {}
    sorts: [margin_uplift_from_promotion desc]
    limit: 50
    column_limit: 50
    dynamic_fields: [{dimension: margin_uplift_from_promotion, label: Margin Uplift
          from Promotion, expression: "(${order_purchase_affinity.product_a_total_margin}+${order_purchase_affinity.product_b_total_basket_margin})*${assumed_promotion_uptake}*(${order_purchase_affinity.lift})",
        value_format: !!null '', value_format_name: usd_0, _kind_hint: dimension,
        _type_hint: number}, {dimension: assumed_promotion_uptake, label: Assumed
          Promotion Uptake, expression: '0.1', value_format: !!null '', value_format_name: percent_1,
        _kind_hint: dimension, _type_hint: number}, {table_calculation: margin_uplift_from_top_5_promotions,
        label: Margin Uplift from Top 5 Promotions, expression: 'sum(if(row()<=5,${margin_uplift_from_promotion},null))',
        value_format: !!null '', value_format_name: usd_0, _kind_hint: dimension,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#5A30C2"
    single_value_title: 상위 5개 프로모션을 통한 마진 증가량
    conditional_formatting: [{type: equal to, value: !!null '', background_color: '',
        font_color: !!null '', color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85,
          custom: {id: 0beedf53-60ed-7e3d-6b1e-9800cfe27788, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: [order_purchase_affinity.lift]},
      {type: equal to, value: !!null '', background_color: !!null '', font_color: !!null '',
        color_application: {collection_id: d588263f-f0cb-4f93-b431-700d57025b85, custom: {
            id: 42c42989-a24b-cae4-b890-84b06c7d20ed, label: Custom, type: continuous,
            stops: [{color: "#ffffff", offset: 0}, {color: "#83ff80", offset: 50},
              {color: "#06bf23", offset: 100}]}, options: {steps: 5}}, bold: false,
        italic: false, strikethrough: false, fields: []}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    subtotals_at_bottom: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: circle
    series_types: {}
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    reference_lines: []
    trend_lines: []
    show_null_points: true
    interpolation: step
    hidden_fields: [order_purchase_affinity.product_b, order_purchase_affinity.product_a_total_margin,
      order_purchase_affinity.product_b_total_basket_margin, order_purchase_affinity.lift,
      assumed_promotion_uptake, margin_uplift_from_promotion]
    defaults_version: 1
    listen:
      Analysis Timeframe: order_purchase_affinity.affinity_timeframe
      Product Level: order_items_base.product_level
      Minimum Purchase Frequency: order_purchase_affinity.product_b_order_frequency
      Focus Category: order_purchase_affinity.product_a_category
      Focus Product: order_purchase_affinity.product_a
    row: 14
    col: 13
    width: 11
    height: 2
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "** 사용법 : **\n진한 <font color=\"green\">초록색</font> 을 띄는 컬럼일수록 선택 품목의\
      \ 번들로 추천드리는 상품입니다. \n\n**<font color=\"#5b30c2\" weight=\"bold\">보라색</font>**\
      \ 값은 5가지의 상위 번들의 프로모션을 진행하였을 경우의 **10%** 의 잠재 수익을 보여줍니다."
    row: 14
    col: 0
    width: 3
    height: 12
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #4285F4;">

      <nav style="font-size: 18px; padding: 5px 10px 0 10px; height: 60px">

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"
       href="/dashboards/4?접속+브라우저=&유입+경로=&기간=2+weeks">1_웹페이지 접속자 분석</a>

         <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;" href="https://trial.looker.com/dashboards/67?%EA%B8%B0%EA%B0%84=7+day">2_매장 판매 현황</a>

        <a style="padding: 5px 15px; border-top: solid 1px #4285F4; border-left: solid 1px #4285F4; border-right: solid 1px #4285F4; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #eaf1fe;"  href="https://trial.looker.com/dashboards/69?Product+Level=product&Analysis+Timeframe=90+days&Focus+Product=&Minimum+Purchase+Frequency=%3E%3D0.005&Focus+Category=">3_제품 판매 현황</a>

        <a style="padding: 5px 15px; border-bottom: solid 1px #4285F4; float: left; line-height: 40px;"   href="https://trial.looker.com/dashboards/116?%EC%83%81%EB%8B%B4%EC%9B%90+%EB%AA%85=Tonya+Koop&%EA%B8%B0%EA%B0%84=2022%2F01%2F01+to+2022%2F06%2F16">4_상담원 평가</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  filters:
  - name: Product Level
    title: Product Level
    type: field_filter
    default_value: product
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    listens_to_filters: []
    field: order_items_base.product_level
  - name: Analysis Timeframe
    title: Analysis Timeframe
    type: date_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
  - name: Focus Product
    title: Focus Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    listens_to_filters: []
    field: order_purchase_affinity.product_a
  - name: Focus Category
    title: Focus Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: Looker_Demo_retail_block_model
    explore: order_purchase_affinity
    listens_to_filters: []
    field: order_purchase_affinity.product_a_category
  - name: Minimum Purchase Frequency
    title: Minimum Purchase Frequency
    type: number_filter
    default_value: ">=0.005"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
