---
- dashboard: Test_waterfall
  title: test
  description: ''
  preferred_slug: oA7oTV8Kj4mAPLsSnJDu4G
  theme_name: ''
  layout: newspaper
  tabs:
  - name: ''
    label: ''
  elements:
  - title: schedule
    name: schedule
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_plan.id, scheduled_plan.name, scheduled_job.cron_schedule]
    limit: 500
    column_limit: 50
    show_view_names: false
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
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
    tab_name: ''
  - title: waterfall
    name: waterfall
    model: mtr_abraham_thelook
    explore: orders
    type: looker_waterfall
    fields: [orders.status, orders.sumarize_negative]
    sorts: [orders.sumarize_negative desc 0]
    limit: 500
    column_limit: 50
    total: true
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application:
      collection_id: default-company-colors
      palette_id: default-company-colors-categorical-0
      options:
        steps: 5
        reverse: false
    advanced_vis_config: |-
      {
        chart: {},
        series: [{
          name: 'Waterfall Chart'
          }],
          "plotOptions": {
            "waterfall": {
              "dataLabels": {
              "enabled": true,
              "inside": false
            }
          }
        },
        "series": [{
          "showInLegend": false,
          "pointWidth": 70,
          "dataLabels": {
            "enabled": true,
            "crop": false,
            "align": 'top',
            "overflow": 'allow'
          }
        }]
      }
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: true
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: true
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 0
    col: 8
    width: 12
    height: 8
    tab_name: ''
