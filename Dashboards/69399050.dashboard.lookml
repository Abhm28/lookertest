---
- dashboard: '69399050'
  title: '69399050'
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: XtO3THBQal8NwXtJZ8Lbf5
  layout: newspaper
  tabs:
  - name: 1 test
    label: 1 test
  - name: 2 test
    label: 2 test
  - name: 3 test
    label: 3 test
  elements:
  - title: Average build (Copy)
    name: Average build (Copy)
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 2
    col: 0
    width: 3
    height: 2
    tab_name: 1 test
  - title: Average build
    name: Average build
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 3
    height: 2
    tab_name: 1 test
  - title: Average build (Copy 2)
    name: Average build (Copy 2)
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 4
    col: 0
    width: 3
    height: 2
    tab_name: 1 test
  - title: orders totals (Copy)
    name: orders totals (Copy)
    model: mtr_abraham_thelook
    explore: orders
    type: single_value
    fields: [orders.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 3
    col: 3
    width: 9
    height: 3
    tab_name: 1 test
  - title: Average build (Copy 3)
    name: Average build (Copy 3)
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 12
    width: 3
    height: 2
    tab_name: 1 test
  - title: orders totals
    name: orders totals
    model: mtr_abraham_thelook
    explore: orders
    type: single_value
    fields: [orders.count]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 3
    width: 9
    height: 3
    tab_name: 1 test
  - title: Average build (Copy 4)
    name: Average build (Copy 4)
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 2
    col: 12
    width: 3
    height: 2
    tab_name: 1 test
  - title: Average build (Copy 5)
    name: Average build (Copy 5)
    model: system__activity
    explore: pdt_builds
    type: single_value
    fields: [pdt_builds.average_build_time_minutes]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 4
    col: 12
    width: 3
    height: 2
    tab_name: 1 test
  - title: test
    name: test
    model: mtr_abraham_thelook
    explore: orders
    type: looker_grid
    fields: [orders.status, orders.count]
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 15
    width: 9
    height: 3
    tab_name: 1 test
  - title: test (Copy)
    name: test (Copy)
    model: mtr_abraham_thelook
    explore: orders
    type: looker_grid
    fields: [orders.status, orders.count]
    sorts: [orders.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 3
    col: 15
    width: 9
    height: 3
    tab_name: 1 test
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: mtr_abraham_thelook
    explore: orders
    type: looker_grid
    fields: [orders.status, users.state, users.count]
    pivots: [orders.status]
    sorts: [orders.status, users.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 12
    width: 12
    height: 8
    tab_name: 2 test
  - title: Untitled
    name: Untitled
    model: mtr_abraham_thelook
    explore: orders
    type: looker_grid
    fields: [orders.status, users.state, users.count]
    pivots: [orders.status]
    sorts: [orders.status, users.count desc 0]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 12
    height: 8
    tab_name: 2 test
  - title: Untitled (Copy 3)
    name: Untitled (Copy 3)
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job.cron_schedule, scheduled_job.id, scheduled_job.name]
    sorts: [scheduled_job.cron_schedule]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 16
    width: 8
    height: 6
    tab_name: 3 test
  - title: Untitled (Copy 2)
    name: Untitled (Copy 2)
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job.cron_schedule, scheduled_job.id, scheduled_job.name]
    sorts: [scheduled_job.cron_schedule]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 8
    width: 8
    height: 6
    tab_name: 3 test
  - title: Untitled
    name: Untitled (2)
    model: system__activity
    explore: scheduled_plan
    type: looker_grid
    fields: [scheduled_job.cron_schedule, scheduled_job.id, scheduled_job.name]
    sorts: [scheduled_job.cron_schedule]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    row: 0
    col: 0
    width: 8
    height: 6
    tab_name: 3 test
