- dashboard: 5k_schedule_limit
  title: 5k Schedule Limit
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: 5k_schedule_limit_PDFPNG
      title: Untitled Visualization
      model: mtr_abraham_thelook
      explore: order_items
      type: table
      fields: [order_items.id, order_items.sale_price, products.brand, products.retail_price,
        products.period_one]
      sorts: [products.period_one desc 0]
      limit: 1000000
      column_limit: 50
