connection: "lookerdata_standard_sql"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: josh_wow_thesis_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: josh_wow_thesis_default_datagroup

explore: leaderboards {
  join: specializations {
    relationship: many_to_one
    sql_on: ${leaderboards.specialization} = ${specializations.specialization_id} ;;
  }
  join: dungeons {
    relationship: many_to_one
    sql_on: ${dungeons.id} = ${leaderboards.dungeon_id} ;;
  }
  join: classes {
    relationship: many_to_one
    sql_on: ${classes.id} = ${specializations.class_id} ;;
  }
}

explore: classes {
  join: specializations {
    relationship: one_to_many
    sql_on: ${classes.id}  = ${specializations.class_id};;
  }
}

explore: dungeons {
  join: leaderboards {
    relationship: one_to_many
    sql_on: ${dungeons.id} = ${leaderboards.dungeon_id} ;;
  }
}
