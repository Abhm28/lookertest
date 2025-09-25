# The name of this view in Looker is "Orders"
view: orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]
  parameter: parametertest {
    type: unquoted
    allowed_value: {
      label: "Total Sale Price"
      value: "sale_price"
    }
    allowed_value: {
      label: "Total Cost"
      value: "cost"
    }
  }
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, minute,hour]
    sql: ${TABLE}.created_at ;;
    convert_tz: no
  }

  dimension: dateformat {
    type: date
    sql: ${TABLE}.created_at ;;
    convert_tz: no
    html: {{ rendered_value | append: "-01" | date: "%^b-%Y"}} ;;
  }
  dimension: minutes {
    type: number
    sql: 12*10 ;;
  }


  # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Status" in Explore.

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
    drill_fields: [id]
    link: {
      label: "Drill as Table"
      url: "{% assign vis_config = '{
      \"type\": \"table\"
      }' %}
      {{ link }}&vis_config={{ vis_config | encode_uri }}&toggle=dat,pik,vis&limit=5000"
    }
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
    label: ""
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

  dimension: icon {
    type: string
    sql: "https://cdn-icons-png.flaticon.com/512/2550/2550277.png" ;;
    html: <img src={{value}} height="50" width="50"> ;;
  }


  measure: count {
    type: count
    filters: [users.state : "Wyoming,Wisconsin,Utah, Texas", users.gender: "f", users.age: ">18"]
    drill_fields: [id, status]

  }

  measure: counttest {
    type: count_distinct
    sql: ${status} ;;
    drill_fields: [id]

  }

  measure: summillon {
    type: number
    sql: ${count}*10.12132324545 ;;
    value_format: "0.000,,\" M\""
  }

  measure: measuretest {
    type: number
    label: "Measure test"
    value_format: "#,##0.00"
    sql:
      {% if parametertest._parameter_value == 'sale_price' %}
        ${count}*100
      {% elsif parametertest._parameter_value == 'cost' %}
        ${count}*10
      {% endif %}
    ;;
    html:
      {% if parametertest._parameter_value == 'sale_price' %}
        $ {{rendered_value}}
      {% elsif parametertest._parameter_value == 'cost' %}
        {{rendered_value}}
      {% endif %}
    ;;
  }

  dimension: drill {
    sql: ${TABLE}.status ;;
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.last_name,
  users.first_name,
  users.id,
  order_items.count,
  order_items_vijaya.count,
  count
  ]
  }
  set:  drilldet{
    fields:[id]
  }
}
