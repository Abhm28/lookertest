# The name of this view in Looker is "Salary"
view: salary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.Salary ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Dept ID" in Explore.

  dimension: dept_id {
    type: number
    sql: ${TABLE}.DeptID ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.Salary ;;
  }
  measure: count {
    type: count
  }
}
