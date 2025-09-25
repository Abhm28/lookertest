project_name: "mtr_abraham_thelook"

constant: table_no_cell_viz {
  value: "{% assign vis_config = '{\"type\":\"looker_grid\",\"series_cell_visualizations\":{}}' | url_encode | prepend: '&vis_config=' %}"
}
