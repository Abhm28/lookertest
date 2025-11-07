view: incrementalcascading2 {
  derived_table: {
    indexes: ["id"]
    increment_key: "created_date"
    increment_offset: 3
    datagroup_trigger: test_datagroup_vega
    explore_source: pdtcascadingphase1 {

      column: count {}
      column: created_date {}
      column: last_name {}
      column: id {}
      column: state {}
      column: zip {}
    }
  }
  dimension: count {
    description: ""
    type: number
  }
  dimension: created_date {
    description: ""
    type: date
  }
  dimension: last_name {
    description: ""
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: state {
    description: ""
  }
  dimension: zip {
    description: ""
    type: zipcode
  }
}
