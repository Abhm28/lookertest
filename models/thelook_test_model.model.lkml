connection: "thelook"

label: "The Look"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project

explore: vuelos {
  from: flights
  label: "Vuelos"
}
