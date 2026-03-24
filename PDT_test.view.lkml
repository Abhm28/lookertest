# If necessary, uncomment the line below to include explore_source.
# include: "mtr_abraham_thelook.model.lkml"
view: add_a_unique_name_1774328126 {
  derived_table: {
    explore_source: order_items {
      column: id {}
      column: sale_price {}
      column: brand { field: products.brand }
      column: retail_price { field: products.retail_price }
      column: period_one { field: products.period_one }
    }
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: sale_price {
    description: ""
    type: number
  }
  dimension: brand {
    description: ""
  }
  dimension: retail_price {
    description: ""
    type: number
  }
  dimension: period_one {
    label: "Products "
    description: ""
    value_format: "$#,##0.00"
    type: number
  }
}
