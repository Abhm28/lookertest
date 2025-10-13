view: pdt_test_vega {
  derived_table: {
    explore_source: orders {
      column: status {}
      column: count {}
      column: zip { field: users.zip }
    }
  }
  dimension: status {
    description: ""
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: zip {
    description: ""
    type: zipcode
  }
}
