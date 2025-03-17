# The name of this view in Looker is "Orders"
view: orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CONVERT_TZ(${TABLE}.created_at,'UTC','Mexico/General') ;;
    convert_tz: yes
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Status" in Explore.

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  dimension: link{
    sql: "text" ;;
    html: <div style="text-align: left; display: block; font-size: 14px; width: 100vw; padding-left: 30px; line-height: 22px">
     <a href="https://moma.corp.google.com/search?q=in%3Alooker-support&hq=" target="_blank" rel="noreferrer">Security Risk Analysis</a> <br>
     <a href="https://www.youtube.com/" target="_blank" rel="noreferrer">success metrics</a> <br>
</div> ;;
  }
  dimension: concat {
    type: string
    sql: CONCAT(${status}," - ",${user_id} ) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: drill {
    sql: ${TABLE}.status ;;
    drill_fields: [status,user_id, link,count,count]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.last_name,
  users.first_name,
  users.id,
  order_items.count,
  order_items_vijaya.count
  ]
  }

}
