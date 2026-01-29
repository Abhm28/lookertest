---
- dashboard: test_67397699_lookmldashbaord
  title: test 67397699
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: I3xk7hgZeREJkjIP3Bw3Eo
  theme_name: ''
  layout: newspaper
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
  - type: button
    name: button_100
    rich_content_json: '{"text":"New Button","description":"","newTab":true,"alignment":"center","size":"medium","style":"FILLED","color":"#1A73E8","href":"/embed/dashboards/mtr_abraham_thelook::testlookmlbylook"}'
    row: 6
    col: 0
    width: 24
    height: 1
