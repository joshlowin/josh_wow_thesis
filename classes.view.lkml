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

  dimension:  is_warrior{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=1 then 1 else 0 end ;;
  }
  dimension:  is_paladin{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=2 then 1 else 0 end ;;
  }
  dimension:  is_hunter{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=3 then 1 else 0 end ;;
  }
  dimension:  is_rogue{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=4 then 1 else 0 end ;;
  }
  dimension:  is_priest{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=5 then 1 else 0 end ;;
  }
  dimension:  is_death_knight{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=6 then 1 else 0 end ;;
  }
  dimension:  is_shaman{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=7 then 1 else 0 end ;;
  }
  dimension:  is_mage{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=8 then 1 else 0 end ;;
  }
  dimension:  is_warlock{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=9 then 1 else 0 end ;;
  }
  dimension:  is_monk{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=10 then 1 else 0 end ;;
  }
  dimension:  is_druid{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=11 then 1 else 0 end ;;
  }
  dimension:  is_demon_hunter{
    group_label: "class_dummies"
    type: number
    sql: case when ${id}=12 then 1 else 0 end ;;
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
