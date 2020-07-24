view: leaderboards {
  sql_table_name: mythic_leaderboards.leaderboards ;;

  dimension: character_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.character_id ;;
     hidden: yes
  }

  dimension: character_name {
    type: string
    sql: ${TABLE}.character_name ;;
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
    sql: ${TABLE}.duration ;;
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

  dimension: distinct_ids {
    type: number
    sql: DISTINCT(${TABLE}.character_id) ;;
  }

  #dimension: team_id {
  #  type: string
  #  sql: concat(to_string(${completed_at}),to_string(${dungeon_id}),to_string(${duration}),to_string(${faction}),to_string(${keystone_level})) ;;
  #}

  measure: count {
    type: count
    drill_fields: [character_name, distinct_ids, realm_name, dungeon_name, specialization]
  }

}
