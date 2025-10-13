connection: "thelook"
include: "/pdts/**/*.view"
include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: test_datagroup {
  interval_trigger: "4 minutes"
  max_cache_age: "6 minutes"
}
