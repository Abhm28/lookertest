# The name of this view in Looker is "Orders"
view: orders {
  label: "[Usage Metrics]"
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
    drill_fields: [status]
  }

  dimension: user {
    type: string
    sql: _org ;;
  }

  dimension: now {
    type: date_time # or type: string
    sql: SELECT DATETIME(now(), "America/Los_Angeles") as date;;
    convert_tz: no
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, minute,hour]
    sql: ${TABLE}.created_at ;;
    convert_tz: no
  }

  dimension: createdatetest_cst {
    type: date_time
    #sql: ${TABLE}.created_at;;
    sql: CONVERT_TZ(${TABLE}.created_at,'UTC', 'America/Chicago') ;;
    html: {{ value | date: '%m/%d/%Y %H:%M:%S' }} ;;
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
    suggestions: ["CANCELLED","COMPLETED","PENDING"]
    #link: {
    #  label: "View Account on Salesforce"
    #  url: "https://gcpl2516.cloud.looker.com/dashboards/37?Email={{nombre}}"
    #  icon_url: "https://c1.sfdcstatic.com/content/dam/web/en_us/www/images/home/logo-salesforce.svg"
    #}
    link: {
      label: "View on Instance Specific Dashbaord"
      url: "https://gcpl2516.cloud.looker.com/looks/15"
      icon_url: "http://www.looker.com/favicon.ico"
    }

    link: {
      label: "View Account in Vitally"
      url: "https://gcpl2516.cloud.looker.com/looks/15"
    }
    link: {
      label: "Instance Metrics"
      url: "https://gcpl2516.cloud.looker.com/looks/15"
    }
  }

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
    label: ""
    #required_access_grants: [test_access]
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
    html: {% if value == 0 %}
    <p style="color: black; background-color: red;">{{ rendered_value }}</p>
    {% elsif value >0 %}
    <p style="color: black; background-color: geen;">{{ rendered_value }}</p>
    {% else %}
    <p style="color: white; background-color: yellow;">{{ rendered_value }}</p>
    {% endif %} ;;
    description: "The current status of an existing order."
  }

  measure: sumarize_negative {
    type: number
    sql: ${count}-1000 ;;

  }

  measure: summillon {
    type: number
    sql: ${id}*125.11 ;;
    value_format: "0.000,,\" M\""
    label: "Contracted Policy Owners/Admins"
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
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: button {
    type: string
    sql: "Click to view the dictionary" ;;
    link: {
        label: "Ver Dashboard de Detalle"
        url: "/embed/dashboards/mtr_abraham_thelook::testlookmlbylook?Created="
        icon_url: ""
    }
  }
  dimension: drill2 {
    sql: ${TABLE}.state ;;
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
  count,
  status,
  users.state
  ]
  }
  set:  drilldet{
    fields:[id]
  }
}
