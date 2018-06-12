view: classes {
  sql_table_name: mythic_leaderboards.classes ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}.class_name ;;
  }

  dimension: is_damage_only {
    type: number
    sql: ${TABLE}.is_damage_only ;;
  }

  dimension: is_healer {
    type: number
    sql: ${TABLE}.is_healer ;;
  }

  dimension: is_tank {
    type: number
    sql: ${TABLE}.is_tank ;;
  }

  measure: count {
    type: count
    drill_fields: [id, class_name]
  }
}
