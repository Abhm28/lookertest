connection: "bigquery_test"
include: "/pdts/**/*.view"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: test_datagroup_vega {
  interval_trigger: "5 minutes"
  max_cache_age: "5 minutes"
}
