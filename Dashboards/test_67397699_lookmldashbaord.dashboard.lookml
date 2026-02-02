---
- dashboard: test_67397699_udlookmldash
  title: test 67397699 ud-lookmldash
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: rEs1IovLZCKRZ4GJOuq8NJ
  theme_name: ''
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: test 67397699
    name: test 67397699
    model: mtr_abraham_thelook
    explore: orders
    type: table
    fields: [users.state, users.testLocation, users.count]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
    tab_name: ''
  - title: test
    name: test
    model: mtr_abraham_thelook
    explore: orders
    type: looker_grid
    fields: [users.city, users.country, users.count, orders.status]
    sorts: [users.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
    hidden_pivots: {}
    series_labels: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 8
    height: 6
    tab_name: ''
  - title: Dictionary
    name: Dictionary
    model: mtr_abraham_thelook
    explore: orders
    type: single_value
    fields: [orders.button]
    sorts: [orders.button]
    limit: 500
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
    listen: {}
    row: 6
    col: 8
    width: 8
    height: 2
    tab_name: ''
