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

  dimension: class_name {
    type: string
    sql: ${TABLE}.class_name ;;
  }

  dimension: specialization_name {
    type: string
    sql: ${TABLE}.specialization_name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [specialization_id, specialization_name, class_name]
  }
}
