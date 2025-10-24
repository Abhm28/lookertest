# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: demo_db.products ;;
  drill_fields: [id]
  parameter: Departament {
    type: string
    allowed_value: {
      label: "Men"
      value: "Men"
    }
    allowed_value: {
      label: "Women"
      value: "Women"
    }
    allowed_value: {
      label: "Null"
      value: ""
    }
  }
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Brand" in Explore.
  dimension: parametertest {
    label: "{% parameter Departament %}"
    type: string
    sql: {% parameter Departament %} ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

# Assuming this is in the view file (e.g., product_view.view)

# ... (other dimensions and fields)

  dimension: is_bottom_wear {
    type: yesno
    sql:${category} IN ('Jeans', 'Leggings', 'Pants', 'Pants & Capris', 'Shorts');;
      }

  dimension: is_specialty_category {
    type: yesno
    sql: ${category} IN ('Maternity', 'Jeans', 'Plus', 'Intimates', 'Socks & Hosiery', 'Leggings');;
      }

  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
