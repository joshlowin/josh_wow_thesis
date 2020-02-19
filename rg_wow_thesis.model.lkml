connection: "lookerdata_standard_sql"

# include all the views
include: "*.view"

# include all the dashboards
# include: "*.dashboard"

datagroup: rg_wow_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rg_wow_thesis_default_datagroup

explore: all_leaderboards {
  join: specializations {
    relationship: many_to_one
    sql_on: ${all_leaderboards.specialization} = ${specializations.specialization_id} ;;
  }
  join: dungeons {
    relationship: many_to_one
    sql_on: ${dungeons.id} = ${all_leaderboards.dungeon_id} ;;
  }
  join: classes {
    relationship: many_to_one
    sql_on: ${classes.id} = ${specializations.class_id} ;;
  }
}
