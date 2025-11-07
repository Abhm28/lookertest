view: incrementaltest {
  derived_table: {
    explore_source: users {
      column: last_name {}
      column: segmentUserId {}
      column: testLocation {}
      column: count {}
      column: id {}
      column: created_date {}
    }
    indexes: ["id"]
    increment_key: "created_date"
    increment_offset: 2
    datagroup_trigger: test_datagroup_vega
    distribution_style: all
  }
  dimension: last_name {
    description: ""
  }
  dimension: segmentUserId {
    description: ""
  }
  dimension: testLocation {
    description: ""
    type: location
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: created_date {
    description: ""
    type: date
  }

}
