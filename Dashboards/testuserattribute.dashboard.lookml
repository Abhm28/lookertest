- dashboard: testuserattribute
  title: testuserattribute
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: UHlsWRnkWg7hxTKGj0QSYA
  elements:
  - title: testuserattribute
    name: testuserattribute
    model: mtr_abraham_thelook
    explore: orders
    type: table
    fields: [orders.status, orders.count, users.zip]
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    query_timezone: America/Mexico_City
    listen:
      Zip: users.zip
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Zip
    title: Zip
    type: field_filter
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: mtr_abraham_thelook
    explore: orders
    listens_to_filters: []
    field: users.zip
