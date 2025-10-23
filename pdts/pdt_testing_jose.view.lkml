view: pdt_testing_jose {
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
