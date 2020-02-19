- dashboard: class_stats_solo
  title: class_stats_solo
  layout: newspaper
  elements:
  - name: spec distribution percentage by period (copy)
    title: spec distribution percentage by period (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 8
    col: 12
    width: 12
    height: 7
  - name: spec distribution count by period (copy)
    title: spec distribution count by period (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 8
    col: 0
    width: 12
    height: 7
  - name: spec count distribution across high keystone level (copy)
    title: spec count distribution across high keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 56
    col: 0
    width: 12
    height: 7
  - name: spec distribution across low keystone level (copy)
    title: spec distribution across low keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 41
    col: 12
    width: 12
    height: 7
  - name: spec distribution across high keystone level (copy)
    title: spec distribution across high keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 56
    col: 12
    width: 12
    height: 7
  - name: spec distribution across mid keystone level (copy)
    title: spec distribution across mid keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 48
    col: 12
    width: 12
    height: 8
  - name: spec count distribution across low keystone level (copy)
    title: spec count distribution across low keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 41
    col: 0
    width: 12
    height: 7
  - name: spec count distribution across mid keystone level (copy)
    title: spec count distribution across mid keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 48
    col: 0
    width: 12
    height: 8
  - name: spec distribution across all keystone level (copy)
    title: spec distribution across all keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 32
    col: 0
    width: 24
    height: 9
  - name: avg duration distribution across all keystone level (copy)
    title: avg duration distribution across all keystone level (copy)
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 23
    col: 0
    width: 24
    height: 9
  - title: class_icon
    name: class_icon
    model: rg_wow_thesis
    explore: all_leaderboards
    type: single_value
    fields: [classes.class_crest]
    sorts: [classes.class_crest]
    limit: 500
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 0
    col: 0
    width: 11
    height: 8
  - title: class_name
    name: class_name
    model: rg_wow_thesis
    explore: all_leaderboards
    type: single_value
    fields: [classes.class_name]
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
    listen:
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 0
    col: 11
    width: 13
    height: 8
  - name: avg_duration_by_spec_by_period
    title: avg_duration_by_spec_by_period
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.period, specializations.specialization_name, all_leaderboards.avg_duration]
    pivots: [specializations.specialization_name]
    sorts: [all_leaderboards.avg_duration desc 0, specializations.specialization_name]
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
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 15
    col: 0
    width: 24
    height: 8
  - name: retained
    title: retained
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_funnel
    fields: [all_leaderboards.count, all_leaderboards.keystone_level]
    filters:
      all_leaderboards.keystone_level: ">=15"
    sorts: [all_leaderboards.keystone_level]
    limit: 20
    column_limit: 50
    dynamic_fields: [{table_calculation: percentage_of_previous, label: percentage_of_previous,
        expression: "${all_leaderboards.count} / offset(${all_leaderboards.count},\
          \ -1)", value_format: !!null '', value_format_name: percent_2, _kind_hint: measure,
        _type_hint: number}]
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    point_style: none
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: [all_leaderboards.count]
    series_types: {}
    y_axes: []
    listen:
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 63
    col: 0
    width: 12
    height: 9
  - name: retained_spec_table
    title: retained_spec_table
    model: rg_wow_thesis
    explore: all_leaderboards
    type: table
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, specializations.specialization_name]
    pivots: [specializations.specialization_name]
    filters:
      all_leaderboards.keystone_level: ">=15"
    sorts: [specializations.specialization_name 0, all_leaderboards.keystone_level]
    limit: 20
    column_limit: 50
    dynamic_fields: [{table_calculation: retention, label: retention, expression: "${all_leaderboards.count}\
          \ / offset(${all_leaderboards.count}, -1)", value_format: !!null '', value_format_name: percent_2,
        _kind_hint: measure, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    barColors: [red, blue]
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    point_style: none
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    hidden_fields: []
    series_types: {}
    conditional_formatting: [{type: low to high, value: !!null '', background_color: !!null '',
        font_color: !!null '', palette: {name: Red to Yellow to Green, colors: ["#F36254",
            "#FCF758", "#4FBC89"]}, bold: false, italic: false, strikethrough: false,
        fields: [retention]}]
    y_axes: []
    listen:
      Class: classes.class_name
      Realm: all_leaderboards.realm_name
    row: 63
    col: 12
    width: 12
    height: 9
  filters:
  - name: Class
    title: Class
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
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