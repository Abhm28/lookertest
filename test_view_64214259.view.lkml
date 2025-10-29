
view: test_view_64214259 {
  derived_table: {
    sql: SELECT
          "mauroalejandro@google.com"  AS `orders.nombre`,
          orders.status  AS `orders.status`,
          users.state  AS `users.state`,
          COUNT(CASE WHEN (( users.state   IN ('Wyoming', 'Wisconsin', 'Utah', 'Texas'))) AND ((( users.gender  ) = 'f')) AND ( users.age   > 18) THEN 1 ELSE NULL END) AS `orders.count`
      FROM demo_db.orders  AS orders
      LEFT JOIN demo_db.users  AS users ON orders.user_id = users.id
      GROUP BY
          1,
          2,
          3
      ORDER BY
          4 DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: orders_nombre {
    type: string
    sql: ${TABLE}.`orders.nombre` ;;
  }

  dimension: orders_status {
    type: string
    sql: ${TABLE}.`orders.status` ;;
  }

  dimension: users_state {
    type: string
    sql: ${TABLE}.`users.state` ;;
  }

  dimension: orders_count {
    type: number
    sql: ${TABLE}.`orders.count` ;;
  }

  set: detail {
    fields: [
        orders_nombre,
	orders_status,
	users_state,
	orders_count
    ]
  }
}
