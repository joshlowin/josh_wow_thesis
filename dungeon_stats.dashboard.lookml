- dashboard: dungeon_stats
  title: dungeon_stats
  layout: newspaper
  elements:
  - name: Dungeon distribution across keystone levels
    title: Dungeon distribution across keystone levels
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.dungeon_name, all_leaderboards.keystone_level]
    pivots: [all_leaderboards.dungeon_name]
    sorts: [all_leaderboards.count desc 0, all_leaderboards.dungeon_name]
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_types: {}
    limit_displayed_rows: false
    hidden_series: [Return to Karazhan - all_leaderboards.count]
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Difficulty (Keystone Level)
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 0
    col: 8
    width: 16
    height: 6
  - name: spec distribution percentage by period (copy 2)
    title: spec distribution percentage by period (copy 2)
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [specializations.specialization_name, all_leaderboards.period, all_leaderboards.count]
    pivots: [specializations.specialization_name]
    sorts: [specializations.specialization_name 0, all_leaderboards.count desc 20]
    limit: 500
    column_limit: 50
    stacking: percent
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 14
    col: 12
    width: 12
    height: 11
  - name: spec distribution count by period (copy 2)
    title: spec distribution count by period (copy 2)
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [specializations.specialization_name, all_leaderboards.period, all_leaderboards.count]
    pivots: [specializations.specialization_name]
    sorts: [specializations.specialization_name 0, all_leaderboards.count desc 20]
    limit: 500
    column_limit: 50
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    show_null_points: true
    point_style: none
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 14
    col: 0
    width: 12
    height: 11
  - title: Dungeon Name
    name: Dungeon Name
    model: rg_wow_thesis
    explore: all_leaderboards
    type: single_value
    fields: [all_leaderboards.dungeon_name]
    sorts: [all_leaderboards.dungeon_name]
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: []
    y_axes: []
    note_state: collapsed
    note_display: below
    note_text: ''
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 0
    col: 0
    width: 8
    height: 6
  - name: Top 50
    title: Top 50
    model: rg_wow_thesis
    explore: all_leaderboards
    type: table
    fields: [all_leaderboards.character_name, specializations.spec_icon, specializations.specialization_name,
      all_leaderboards.realm_name, all_leaderboards.completed_at, all_leaderboards.time,
      all_leaderboards.keystone_level]
    sorts: [all_leaderboards.keystone_level desc, all_leaderboards.time]
    limit: 50
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 6
    col: 13
    width: 11
    height: 8
  - name: avg duration distribution across all keystone level (copy 2)
    title: avg duration distribution across all keystone level (copy 2)
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.keystone_level, specializations.specialization_name,
      all_leaderboards.avg_duration]
    pivots: [specializations.specialization_name]
    sorts: [specializations.specialization_name, all_leaderboards.avg_duration desc
        0]
    limit: 500
    column_limit: 50
    stacking: normal
    colors: ['palette: Default']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Difficulty (Keystone Level)
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 6
    col: 0
    width: 13
    height: 8
  - name: spec distribution across all keystone level (copy 2)
    title: spec distribution across all keystone level (copy 2)
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    sorts: [all_leaderboards.count desc 0, specializations.specialization_name]
    limit: 500
    column_limit: 50
    stacking: percent
    colors: ['palette: Default']
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    point_style: none
    series_colors: {}
    series_types: {}
    limit_displayed_rows: false
    hidden_series: []
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    x_axis_label: Difficulty (Keystone Level)
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    y_axes: []
    listen:
      Dungeon Name: all_leaderboards.dungeon_name
      Class Type: specializations.type
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
    row: 25
    col: 0
    width: 24
    height: 8
  filters:
  - name: Dungeon Name
    title: Dungeon Name
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: all_leaderboards.dungeon_name
  - name: Class Type
    title: Class Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: specializations.type
  - name: Realm
    title: Realm
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: all_leaderboards.realm_name
  - name: Class
    title: Class
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: classes.class_name