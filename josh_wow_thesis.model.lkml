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

explore: classes {
  join: specializations {
    relationship: one_to_many
    sql_on: ${classes.id}  = ${specializations.class_id};;
  }
}

explore: dungeons {}
