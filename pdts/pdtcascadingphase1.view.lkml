view: pdtcascadingphase1 {
  derived_table: {
    datagroup_trigger: test_datagroup_vega
    explore_source: user_data {
      column: id { field: users.id }
      column: created_date { field: users.created_date }
      column: last_name { field: users.last_name }
      column: state { field: users.state }
      column: zip { field: users.zip }
      column: count { field: users.count }
    }
    indexes: ["id"]
  }
  dimension: id {
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
  dimension: state {
    description: ""
  }
  dimension: zip {
    description: ""
    type: zipcode
  }
  dimension: count {
    description: ""
    type: number
  }
}
