# The name of this view in Looker is "Test"
view: test {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.test ;;
  drill_fields: [tutorial_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: tutorial_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.tutorial_id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: submission {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.submission_date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Tutorial Author" in Explore.

  dimension: tutorial_author {
    type: string
    sql: ${TABLE}.tutorial_author ;;
  }

  dimension: tutorial_title {
    type: string
    sql: ${TABLE}.tutorial_title ;;
  }
  measure: count {
    type: count
    drill_fields: [tutorial_id]
  }
}
