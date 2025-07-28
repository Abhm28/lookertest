view: testnewmodel {
  sql_table_name: demo_db.dept ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Dept ID" in Explore.

  dimension: dept_id {
    type: number
    sql: ${TABLE}.DeptID ;;
  }


  #test pull request

  #test pull request2


  #test pull request3

  dimension: dept_name {
    type: string
    sql: ${TABLE}.DeptName ;;
  }
  measure: count {
    type: count
    drill_fields: [dept_name]
  }
}
