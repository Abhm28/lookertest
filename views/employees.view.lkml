# The name of this view in Looker is "Employees"
view: employees {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.Employees ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Emp ID" in Explore.


  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: customer_facing_cam_advisor_notes {
    label: "CAM Advisor Notes"
    type: string
     sql: ${TABLE}.Name ;;
  }

  dimension: customer_facing_cam_advisor_notes_formatted {
    label: "CAM Advisor Notes"
    type: string
     sql: ${TABLE}.Name ;;
    html: <a style="cursor: pointer;" href="#drillmenu" title= "{{value}}" > {{value}} </a> ;;
    drill_fields: [customer_facing_cam_advisor_notes]
  }







  dimension: emp_id {
    type: number
    sql: ${TABLE}.EmpID ;;
  }

  dimension: manager {
    type: number
    sql: ${TABLE}.Manager ;;
  }


  measure: count {
    type: count
    drill_fields: [name]
  }
}
