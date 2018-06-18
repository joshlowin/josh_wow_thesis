view: specializations {
  sql_table_name: mythic_leaderboards.specializations ;;

  dimension: specialization_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.specialization_id ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}.class_id ;;
  }

  dimension: specialization_name {
    type: string
    sql: ${TABLE}.specialization_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

#   dimension: non_traditional_team {
#     type: number
#     label: "Not 1/1/3"
#     sql: case when ${TABLE}.type = "DAMAGE" then 0,
#               when ${TABLE}.type = "HEALER" then 1,
#               when ${TABLE}.type = "TANK" then 6
#               else null end;;
#     drill_fields: [all_leaderboards.character_id, all_leaderboards.character_name, specialization_name, all_leaderboards.rank, all_leaderboards.dungeon_name, all_leaderboards.duration, all_leaderboards.completed_at]
#   }

  dimension: type_rdps {
    type: yesno
    sql: ${specialization_id} IN (62,63,64,102,253,254,258,262,265,266,267) ;;
  }

  measure: count {
    type: count
    drill_fields: [specialization_id, specialization_name, classes.class_name]
  }
}
