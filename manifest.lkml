project_name: "mtr_abraham_thelook"

constant: table_no_cell_viz {
  value: "{% assign vis_config = '{\"type\":\"looker_grid\",\"series_cell_visualizations\":{}}' | url_encode | prepend: '&vis_config=' %}"
}
application: RadialApp {
  label: "Radial App"
}
visualization: {
  id: "Radial Local"
  label: "Radial Local V1"
  url: "https://gcpl2518.cloud.looker.com/projects/mtr_abraham_thelook/files/radialgauge_v2.js"
}
