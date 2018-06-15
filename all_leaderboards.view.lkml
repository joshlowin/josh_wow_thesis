 view: all_leaderboards {
  derived_table: {
    sql: SELECT character_id, character_name, completed_at, dungeon_id, dungeon_name,duration, faction, keystone_level,period, ranking, realm_id, realm_name, specialization FROM mythic_leaderboards.leaderboards
    UNION DISTINCT
    SELECT character_id, character_name, completed_at, dungeon_id, dungeon_name,duration, faction, keystone_level,period, ranking, realm_id, realm_name, specialization FROM mythic_leaderboards.leaderboards_2
    UNION DISTINCT
    SELECT character_id, character_name, completed_at, dungeon_id, dungeon_name,duration, faction, keystone_level,period, ranking, realm_id, realm_name, specialization FROM mythic_leaderboards.leaderboards_3
    UNION DISTINCT
    SELECT character_id, character_name, completed_at, dungeon_id, dungeon_name,duration, faction, keystone_level,period, ranking, realm_id, realm_name, specialization FROM mythic_leaderboards.leaderboards_4
    UNION DISTINCT
    SELECT character_id, character_name, completed_at, dungeon_id, dungeon_name,duration, faction, keystone_level,period, ranking, realm_id, realm_name, specialization FROM mythic_leaderboards.leaderboards_5
      ;;
    persist_for: "6000 hours"
  }

dimension: character_id {
  primary_key: yes
  type: number
  sql: ${TABLE}.character_id ;;
  hidden: no
}

dimension: character_name {
  type: string
  sql: ${TABLE}.character_name  ;;
  drill_fields: [specialization]
}

dimension: completed_at {
  type: number
  sql: ${TABLE}.completed_at ;;
}

dimension: dungeon_id {
  type: number
  sql: ${TABLE}.dungeon_id ;;
}

dimension: dungeon_name {
  type: string
  sql: ${TABLE}.dungeon_name ;;
}

dimension: duration {
  type: number
  sql: ROUND(${TABLE}.duration/1000/60,2) ;;
}

dimension: faction {
  type: string
  sql: ${TABLE}.faction ;;
}

dimension: keystone_level {
  type: number
  sql: ${TABLE}.keystone_level ;;
}

dimension: period {
  type: number
  sql: ${TABLE}.period ;;
}

dimension: ranking {
  type: number
  sql: ${TABLE}.ranking ;;
}

dimension: realm_id {
  type: number
  sql: ${TABLE}.realm_id ;;
}

dimension: realm_name {
  type: string
  sql: ${TABLE}.realm_name ;;
}

dimension: specialization {
  type: number
  sql: ${TABLE}.specialization ;;
}

# dimension: class_id {
#   type: string
#   sql: CASE
#       when ${specialization} in (62,63,64) then 'Mage'
#       when ${specialization} in (65,66,70) then 'Paladin'
#       when ${specialization} in (71,72,73) then 'Warrior'
#       when ${specialization} in (102,103,104,105) then 'Druid'
#       when ${specialization} in (250,251,252) then 'Death Knight'
#       when ${specialization} in (253,254,255) then 'Hunter'
#       when ${specialization} in (256,257,258) then 'Priest'
#       when ${specialization} in (259,260,261) then 'Rogue'
#       when ${specialization} in (262,263,264) then 'Shaman'
#       when ${specialization} in (266,267,268) then 'Warlock'
#       when ${specialization} in (268,269,270) then 'Monk'
#       when ${specialization} in (577,581) then 'Demon Hunter'
#       else null end;;
# }

dimension: distinct_ids {
  type: number
  sql: DISTINCT(${TABLE}.character_id) ;;
}


measure: count {
  type: count
  drill_fields: [character_name, realm_name, dungeon_name, specialization]
}

measure: avg_duration {
  type: average
  sql: ${duration} ;;
  drill_fields: [character_id, character_name, specialization, avg_duration, keystone_level]
}
}