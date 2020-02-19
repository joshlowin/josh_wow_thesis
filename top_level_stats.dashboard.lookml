- dashboard: top_level_stats
  title: top_level_stats
  layout: newspaper
  embed_style:
    background_color: "#ff00ff"
    show_title: true
    title_color: "#1fff00"
    show_filters_bar: true
    tile_text_color: "#00bcff"
    text_tile_text_color: "#00ffff"
  elements:
  - name: population by class and spec
    title: population by class and spec
    model: rg_wow_thesis
    explore: all_leaderboards
    type: suburst_viz
    fields: [all_leaderboards.count, classes.class_name, specializations.specialization_name]
    sorts: [classes.class_name, all_leaderboards.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    series_colors:
      HORDE: "#C41F3B"
      ALLIANCE: "#0070DE"
    color_range: ["#C41F3B", "#A330C9", "#FF7D0A", "#ABD473", "#69CCF0", "#00FF96",
      "#F58CBA", "#dedede", "#FFF569", "#0070DE", "#9482C9", "#C79C6E"]
    hidden_fields: []
    y_axes: []
    listen:
      Realm: all_leaderboards.realm_name
    row: 26
    col: 0
    width: 24
    height: 11
  - name: population by faction
    title: population by faction
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_pie
    fields: [all_leaderboards.faction, all_leaderboards.count]
    sorts: [all_leaderboards.faction desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    series_colors:
      HORDE: "#C41F3B"
      ALLIANCE: "#0070DE"
      NONE: "#dedede"
    hidden_fields: []
    y_axes: []
    listen:
      Realm: all_leaderboards.realm_name
    row: 4
    col: 0
    width: 12
    height: 8
  - name: population by class
    title: population by class
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_pie
    fields: [all_leaderboards.count, classes.class_name]
    sorts: [classes.class_name]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    series_colors: {}
    colors: ["#C41F3B", "#A330C9", "#FF7D0A", "#ABD473", "#69CCF0", "#00FF96", "#F58CBA",
      "#dedede", "#FFF569", "#0070DE", "#9482C9", "#C79C6E"]
    inner_radius: 65
    hidden_fields: []
    y_axes: []
    listen:
      Realm: all_leaderboards.realm_name
    row: 4
    col: 12
    width: 12
    height: 8
  - name: Class distribution across keystone levels
    title: Class distribution across keystone levels
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_area
    fields: [all_leaderboards.count, all_leaderboards.keystone_level, classes.class_name]
    pivots: [classes.class_name]
    sorts: [all_leaderboards.count desc 0, classes.class_name]
    limit: 500
    column_limit: 50
    stacking: percent
    colors: ["#C41F3B", "#A330C9", "#FF7D0A", "#ABD473", "#69CCF0", "#00FF96", "#F58CBA",
      "#dedede", "#FFF569", "#0070DE", "#9482C9", "#C79C6E"]
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
    row: 43
    col: 0
    width: 24
    height: 11
  - name: retained players
    title: retained players
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
    row: 61
    col: 6
    width: 18
    height: 9
  - name: population by role healer
    title: population by role healer
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_pie
    fields: [all_leaderboards.count, specializations.specialization_name]
    filters:
      all_leaderboards.realm_name: ''
      specializations.type: HEALER
    sorts: [all_leaderboards.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 65
    colors: ["#FF7D0A", "#F58CBA", "#dedede", "#0070DE", "#00FF96", "#dedede"]
    series_colors: {}
    color_range: ["#FF7D0A", "#00FF96", "#F58CBA", "#dedede", "#0070DE"]
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
    row: 21
    col: 0
    width: 10
    height: 5
  - name: population by role damage
    title: population by role damage
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_pie
    fields: [all_leaderboards.count, specializations.specialization_name]
    filters:
      all_leaderboards.realm_name: ''
      specializations.type: DAMAGE
    sorts: [all_leaderboards.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 65
    colors: ["#9482C9", "#A330C9", "#00FF96", "#ABD473", "#FF7D0A", "#F58CBA", "#ABD473",
      "#69CCF0", "#FFF569", "#0070DE", "#69CCF0", "#C41F3B", "#dedede", "#C79C6E",
      "#C79C6E", "#FFF569", "#FF7D0A", "#C41F3B", "#0070DE", "#69CCF0", "#9482C9",
      "#FFF569", "#9482C9", "#ABD473"]
    series_colors: {}
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
    color_range: ["#C41F3B", "#A330C9", "#FF7D0A", "#ABD473", "#69CCF0", "#00FF96",
      "#F58CBA", "#dedede", "#FFF569", "#0070DE", "#9482C9", "#C79C6E"]
    hidden_fields: []
    y_axes: []
    row: 16
    col: 10
    width: 14
    height: 10
  - name: population by role tank
    title: population by role tank
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_pie
    fields: [all_leaderboards.count, specializations.specialization_name]
    filters:
      all_leaderboards.realm_name: ''
      specializations.type: TANK
    sorts: [all_leaderboards.count desc]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 65
    colors: ["#C41F3B", "#A330C9", "#F58CBA", "#FF7D0A", "#00FF96", "#C79C6E"]
    series_colors: {}
    color_range: ["#C41F3B", "#A330C9", "#FF7D0A", "#00FF96", "#F58CBA", "#C79C6E"]
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
    row: 16
    col: 0
    width: 10
    height: 5
  - name: Class, Specialization and Faction Distributions
    type: text
    title_text: Class, Specialization and Faction Distributions
    body_text: These pie-charts and sunburst display distributions of player choices
      in regards to which faction, class and specialization they choose to play.
    row: 0
    col: 0
    width: 16
    height: 4
  - name: Specialization Role Type Distributions
    type: text
    title_text: Specialization Role Type Distributions
    body_text: Aggregating classes across all roles can be misleading with regards
      to the distribution within each spec. While the sunburst quite beautifully gives
      the overall breakdown it is useful to see how specializations compare within
      role types.
    row: 12
    col: 0
    width: 24
    height: 4
  - name: Distribution Across Difficulty
    type: text
    title_text: Distribution Across Difficulty
    body_text: |-
      These next times look at distributions as the keystone difficulty increases. Through level 16 there should be decently even distribution as no one class should be dominant at the general player level. However, as difficulty tends to the extreme certain classes may crowd-out less performant classes as the difficulty necessitates the best.

      Average duration looks to how long each class takes to complete the difficulty across all dungeons. Generally classes are within one or two minutes, however, when classes take 3 or more minutes on average more to complete the same difficulty it points to potentially the need to buff or nerf to achieve a better balance.
    row: 37
    col: 0
    width: 24
    height: 6
  - name: ''
    type: text
    body_text: Retention is the percentage of players who completed the subsequent
      difficulty compared to the previous.
    row: 61
    col: 0
    width: 6
    height: 9
  - title: Player Records
    name: Player Records
    model: rg_wow_thesis
    explore: all_leaderboards
    type: single_value
    fields: [all_leaderboards.count]
    limit: 500
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
    plot_size_by_field: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 16
    width: 8
    height: 4
  - title: Avg Duration
    name: Avg Duration
    model: rg_wow_thesis
    explore: all_leaderboards
    type: looker_column
    fields: [specializations.specialization_name, all_leaderboards.avg_duration]
    filters:
      all_leaderboards.keystone_level: ">24"
    sorts: [all_leaderboards.avg_duration desc]
    limit: 500
    query_timezone: America/Los_Angeles
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 54
    col: 0
    width: 24
    height: 7
  filters:
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