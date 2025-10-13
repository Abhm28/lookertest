- dashboard: testdasgbyabraham
  title: Test Abraham lookml Dash
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: zA8k6tsDr3fdrjD06W26D2
  elements:
  - title: Test PDF Downloads
    name: Test PDF Downloads
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    columnOrder: {}
    listen:
      Status: orders.status
    row: 0
    col: 0
    width: 5
    height: 5
  - title: Test PDF Downloads (Copy)
    name: Test PDF Downloads (Copy)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, test_dim]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: '"testing stuff"'
      label: test_dim
      value_format:
      value_format_name:
      dimension: test_dim
      _kind_hint: dimension
      _type_hint: string
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 0
    col: 5
    width: 5
    height: 5
  - title: Test PDF Downloads (Copy 2)
    name: Test PDF Downloads (Copy 2)
    model: thelook
    explore: orders
    type: single_value
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(pivot_row(${orders.count}))
      label: test_calc
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: test_calc
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 0
    col: 10
    width: 6
    height: 5
  - title: Test PDF Downloads (Copy 6)
    name: Test PDF Downloads (Copy 6)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 10
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 3)
    name: Test PDF Downloads (Copy 3)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '19'
    orientation: horizontal
    defaults_version: 0
    listen:
      Status: orders.status
    row: 5
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 4)
    name: Test PDF Downloads (Copy 4)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(pivot_row(${orders.count}))
      label: test
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: test
      _type_hint: number
      is_disabled: true
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '22'
    orientation: horizontal
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    defaults_version: 0
    listen:
      Status: orders.status
    row: 5
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 5)
    name: Test PDF Downloads (Copy 5)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '14'
    orientation: auto
    defaults_version: 0
    listen:
      Status: orders.status
    row: 0
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 7)
    name: Test PDF Downloads (Copy 7)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, test]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: '"test"'
      label: test
      value_format:
      value_format_name:
      dimension: test
      _kind_hint: dimension
      _type_hint: string
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '20'
    orientation: horizontal
    dividers: true
    defaults_version: 0
    listen:
      Status: orders.status
    row: 10
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 8)
    name: Test PDF Downloads (Copy 8)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 5
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 9)
    name: Test PDF Downloads (Copy 9)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 15
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 10)
    name: Test PDF Downloads (Copy 10)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '18'
    orientation: horizontal
    dividers: true
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    defaults_version: 0
    listen:
      Status: orders.status
    row: 15
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 14)
    name: Test PDF Downloads (Copy 14)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 15
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 11)
    name: Test PDF Downloads (Copy 11)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, testing]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: '"testing"'
      label: testing
      value_format:
      value_format_name:
      dimension: testing
      _kind_hint: dimension
      _type_hint: string
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '24'
    orientation: horizontal
    dividers: true
    defaults_version: 0
    listen:
      Status: orders.status
    row: 10
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 13)
    name: Test PDF Downloads (Copy 13)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, test, testing]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: '"test"'
      label: test
      value_format:
      value_format_name:
      dimension: test
      _kind_hint: dimension
      _type_hint: string
    - category: dimension
      expression: '"testing"'
      label: testing
      value_format:
      value_format_name:
      dimension: testing
      _kind_hint: dimension
      _type_hint: string
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 20
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 12)
    name: Test PDF Downloads (Copy 12)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '17'
    orientation: horizontal
    defaults_version: 0
    listen:
      Status: orders.status
    row: 20
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 15)
    name: Test PDF Downloads (Copy 15)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 25
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 17)
    name: Test PDF Downloads (Copy 17)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 20
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 16)
    name: Test PDF Downloads (Copy 16)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, users.count]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    listen:
      Status: orders.status
    row: 25
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 19)
    name: Test PDF Downloads (Copy 19)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 30
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 21)
    name: Test PDF Downloads (Copy 21)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.id desc]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 35
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 22)
    name: Test PDF Downloads (Copy 22)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, orders.id, orders.status]
    pivots: [orders.status]
    sorts: [orders.status, orders.count desc 0]
    limit: 5000
    column_limit: 5000
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    hidden_pivots: {}
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    columnOrder: {}
    label|orders.id: ID
    heading|orders.id: ''
    hide|orders.id: false
    subtotalDepth: '1'
    label|orders.count: Count
    heading|orders.count: ''
    style|orders.count: normal
    reportIn|orders.count: '1'
    unit|orders.count: ''
    comparison|orders.count: no_variance
    switch|orders.count: false
    var_num|orders.count: true
    var_pct|orders.count: false
    listen:
      Status: orders.status
    row: 35
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 18)
    name: Test PDF Downloads (Copy 18)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 30
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 20)
    name: Test PDF Downloads (Copy 20)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 25
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 23)
    name: Test PDF Downloads (Copy 23)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, users.count, orders.id]
    sorts: [users.count desc]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 30
    col: 16
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 24)
    name: Test PDF Downloads (Copy 24)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 40
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 25)
    name: Test PDF Downloads (Copy 25)
    model: thelook
    explore: orders
    type: looker_area
    fields: [orders.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    color_picker: ["#7FCDAE", "#7ED09C", "#7DD389", "#85D67C", "#9AD97B", "#B1DB7A",
      "#CADF79", "#E2DF78", "#E5C877", "#E7AF75", "#EB9474", "#EE7772"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: 'true'
    label_month: 'false'
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    hidden_pivots: {}
    up_color: false
    down_color: false
    total_color: false
    color_application: undefined
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map: auto
    map_projection: ''
    quantize_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    ordering: none
    show_null_labels: false
    listen:
      Status: orders.status
    row: 46
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 26)
    name: Test PDF Downloads (Copy 26)
    model: thelook
    explore: orders
    type: single_value
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Testing Stuff
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 40
    col: 8
    width: 9
    height: 6
  - title: Test PDF Downloads (Copy 27)
    name: Test PDF Downloads (Copy 27)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 45
    col: 0
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 28)
    name: Test PDF Downloads (Copy 28)
    model: thelook
    explore: orders
    type: looker_grid
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    show_view_names: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    defaults_version: 1
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    theme: traditional
    customTheme: ''
    layout: fixed
    minWidthForIndexColumns: true
    headerFontSize: 12
    bodyFontSize: 12
    showTooltip: true
    showHighlight: true
    rowSubtotals: false
    colSubtotals: false
    spanRows: true
    spanCols: true
    calculateOthers: true
    sortColumnsBy: pivots
    useViewName: false
    useHeadings: false
    useShortName: false
    useUnit: false
    groupVarianceColumns: false
    genericLabelForSubtotals: false
    indexColumn: false
    transposeTable: false
    columnOrder: {}
    label|orders.id: ID
    heading|orders.id: ''
    hide|orders.id: false
    subtotalDepth: '1'
    label|orders.count: Count
    heading|orders.count: ''
    style|orders.count: normal
    reportIn|orders.count: '1'
    unit|orders.count: ''
    comparison|orders.count: no_variance
    switch|orders.count: false
    var_num|orders.count: true
    var_pct|orders.count: false
    label|users.count: Count
    heading|users.count: ''
    style|users.count: normal
    reportIn|users.count: '1'
    unit|users.count: ''
    comparison|users.count: no_variance
    switch|users.count: false
    var_num|users.count: true
    var_pct|users.count: false
    listen:
      Status: orders.status
    row: 51
    col: 8
    width: 8
    height: 5
  - title: Test PDF Downloads (Copy 29)
    name: Test PDF Downloads (Copy 29)
    model: thelook
    explore: orders
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [orders.count, users.count, orders.id]
    sorts: [orders.count desc 0]
    limit: 5000
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    defaults_version: 0
    font_size_main: ''
    orientation: auto
    style_orders.count: "#3A4245"
    show_title_orders.count: true
    title_placement_orders.count: above
    value_format_orders.count: ''
    style_users.count: "#3A4245"
    show_title_users.count: true
    title_placement_users.count: above
    value_format_users.count: ''
    show_comparison_users.count: false
    listen:
      Status: orders.status
    row: 35
    col: 16
    width: 8
    height: 5
  - name: Merged
    title: Merged
    merged_queries:
    - model: thelook
      explore: orders
      type: looker_grid
      fields: [users.id, orders.id, orders.created_time, users.count]
      sorts: [users.id desc, orders.id desc]
      limit: 5000
      column_limit: 50
      total: true
      show_view_names: true
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      hidden_fields: []
      hidden_points_if_no: []
      series_labels: {}
      defaults_version: 1
      font_size_main: ''
      orientation: auto
      style_orders.count: "#3A4245"
      show_title_orders.count: true
      title_placement_orders.count: above
      value_format_orders.count: ''
      style_users.count: "#3A4245"
      show_title_users.count: true
      title_placement_users.count: above
      value_format_users.count: ''
      show_comparison_users.count: false
      theme: traditional
      customTheme: ''
      layout: fixed
      minWidthForIndexColumns: true
      headerFontSize: 12
      bodyFontSize: 12
      showTooltip: true
      showHighlight: true
      rowSubtotals: false
      colSubtotals: false
      spanRows: true
      spanCols: true
      calculateOthers: true
      sortColumnsBy: pivots
      useViewName: false
      useHeadings: false
      useShortName: false
      useUnit: false
      groupVarianceColumns: false
      genericLabelForSubtotals: false
      indexColumn: false
      transposeTable: false
      columnOrder: {}
      label|orders.id: ID
      heading|orders.id: ''
      hide|orders.id: false
      subtotalDepth: '1'
      label|orders.count: Count
      heading|orders.count: ''
      style|orders.count: normal
      reportIn|orders.count: '1'
      unit|orders.count: ''
      comparison|orders.count: no_variance
      switch|orders.count: false
      var_num|orders.count: true
      var_pct|orders.count: false
      label|users.count: Count
      heading|users.count: ''
      style|users.count: normal
      reportIn|users.count: '1'
      unit|users.count: ''
      comparison|users.count: no_variance
      switch|users.count: false
      var_num|users.count: true
      var_pct|users.count: false
      hidden_pivots: {}
    - model: cm_test2516
      explore: orders
      type: table
      fields: [users.id, orders.id, orders.created_time, orders.count]
      sorts: [users.id desc, orders.id desc]
      limit: 5000
      column_limit: 50
      total: true
      hidden_pivots: {}
      join_fields:
      - field_name: orders.id
        source_field_name: orders.id
      - field_name: users.id
        source_field_name: users.id
    hidden_pivots: {}
    type: looker_grid
    total: true
    listen:
    - Status: orders.status
    -
    row: 46
    col: 16
    width: 8
    height: 6
  - name: New Tile
    title: New Tile
    merged_queries:
    - model: thelook
      explore: orders
      type: looker_grid
      fields: [users.id, orders.id, orders.status, orders.count]
      filters:
        orders.status: COMPLETED,CANCELLED,PENDING
      sorts: [users.id desc, orders.id desc]
      limit: 5000
      column_limit: 5000
      show_view_names: true
      show_row_numbers: true
      transpose: false
      truncate_text: true
      hide_totals: false
      hide_row_totals: false
      size_to_fit: true
      table_theme: white
      limit_displayed_rows: false
      enable_conditional_formatting: false
      header_text_alignment: left
      header_font_size: 12
      rows_font_size: 12
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
      hidden_fields: []
      hidden_points_if_no: []
      series_labels: {}
      defaults_version: 1
      font_size_main: ''
      orientation: auto
      style_orders.count: "#3A4245"
      show_title_orders.count: true
      title_placement_orders.count: above
      value_format_orders.count: ''
      style_users.count: "#3A4245"
      show_title_users.count: true
      title_placement_users.count: above
      value_format_users.count: ''
      show_comparison_users.count: false
      hidden_pivots: {}
      theme: traditional
      customTheme: ''
      layout: fixed
      minWidthForIndexColumns: true
      headerFontSize: 12
      bodyFontSize: 12
      showTooltip: true
      showHighlight: true
      rowSubtotals: false
      colSubtotals: false
      spanRows: true
      spanCols: true
      calculateOthers: true
      sortColumnsBy: pivots
      useViewName: false
      useHeadings: false
      useShortName: false
      useUnit: false
      groupVarianceColumns: false
      genericLabelForSubtotals: false
      indexColumn: false
      transposeTable: false
      columnOrder: {}
      label|orders.id: ID
      heading|orders.id: ''
      hide|orders.id: false
      subtotalDepth: '1'
      label|orders.count: Count
      heading|orders.count: ''
      style|orders.count: normal
      reportIn|orders.count: '1'
      unit|orders.count: ''
      comparison|orders.count: no_variance
      switch|orders.count: false
      var_num|orders.count: true
      var_pct|orders.count: false
    - model: cm_test2516
      explore: orders
      type: table
      fields: [users.id, orders.id, orders.created_time, orders.status, users.count]
      filters:
        orders.status: CANCELLED,COMPLETED,PENDING
      sorts: [users.id desc, orders.id desc]
      limit: 5000
      column_limit: 50
      hidden_pivots: {}
      join_fields:
      - field_name: users.id
        source_field_name: users.id
      - field_name: orders.id
        source_field_name: orders.id
    hidden_pivots: {}
    type: table
    pivots: [orders.status, q1_orders.status]
    listen:
    - Status: orders.status
    -
    row:
    col:
    width:
    height:
  filters:
  - name: Status
    title: Status
    type: field_filter
    default_value: COMPLETED
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: thelook
    explore: orders
    listens_to_filters: []
    field: orders.status
