# The name of this view in Looker is "Dummy"
view: dummy {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.dummy ;;
  drill_fields: [a]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: a {
    primary_key: yes
    type: string
    sql: ${TABLE}.a ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "B" in Explore.
      # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "B" in Explore.
      # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "B" in Explore.
      # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "B" in Explore.


  dimension: b {
    type: string
    sql: ${TABLE}.b ;;
  }
  measure: count {
    type: count
    drill_fields: [a]
  }
}
