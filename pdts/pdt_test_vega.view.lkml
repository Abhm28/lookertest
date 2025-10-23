view: pdt_test_vega {
  derived_table: {
    datagroup_trigger: test_datagroup_vega
    explore_source: users {
      column: id {}
      column: first_name {}
      column: email {}
      column: city {}
    }
    indexes: ["id"]
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: first_name {
    description: ""
  }
  dimension: email {
    description: ""
  }
  dimension: city {
    description: ""
  }
}

view: pdt_test_jos3 {
  derived_table: {
    datagroup_trigger: test_datagroup_vega
    explore_source: users {
      column: id {}
      column: first_name {}
      column: email {}
      column: city {}
    }
    indexes: ["id"]
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: first_name {
    description: ""
  }
  dimension: email {
    description: ""
  }
  dimension: city {
    description: ""
  }
}
