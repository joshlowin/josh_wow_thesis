- dashboard: class_stats_multi
  title: class_stats_multi
  layout: newspaper
  elements:
  - name: spec distribution count by period
    title: spec distribution count by period
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 0
    col: 0
    width: 12
    height: 8
  - name: avg duration distribution across all keystone level
    title: avg duration distribution across all keystone level
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 8
    col: 0
    width: 24
    height: 9
  - name: spec distribution percentage by period
    title: spec distribution percentage by period
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 0
    col: 12
    width: 12
    height: 8
  - name: spec distribution across all keystone level
    title: spec distribution across all keystone level
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 17
    col: 0
    width: 24
    height: 9
  - name: spec count distribution across low keystone level
    title: spec count distribution across low keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: "<=13"
    sorts: [all_leaderboards.count desc 0, specializations.specialization_name]
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 26
    col: 0
    width: 12
    height: 7
  - name: spec distribution across low keystone level
    title: spec distribution across low keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: "<=13"
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 26
    col: 12
    width: 12
    height: 7
  - name: spec count distribution across mid keystone level
    title: spec count distribution across mid keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: "[14, 20]"
    sorts: [all_leaderboards.count desc 0, specializations.specialization_name]
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 33
    col: 0
    width: 12
    height: 8
  - name: spec distribution across mid keystone level
    title: spec distribution across mid keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: "[14, 20]"
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 33
    col: 12
    width: 12
    height: 8
  - name: spec count distribution across high keystone level
    title: spec count distribution across high keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: ">20"
    sorts: [all_leaderboards.count desc 0, specializations.specialization_name]
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 41
    col: 0
    width: 12
    height: 7
  - name: spec distribution across high keystone level
    title: spec distribution across high keystone level
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: ">20"
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
      Realm: all_leaderboards.realm_name
      Class: classes.class_name
      Class_type: specializations.type
      Exclude_specs: specializations.specialization_name
    row: 41
    col: 12
    width: 12
    height: 7
  filters:
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
  - name: Class_type
    title: Class_type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: specializations.type
  - name: Exclude_specs
    title: Exclude_specs
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: rg_wow_thesis
    explore: all_leaderboards
    listens_to_filters: []
    field: specializations.specialization_name