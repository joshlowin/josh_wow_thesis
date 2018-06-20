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
    sql: case when ${specialization_id}=66 then "Prot Pala"
              when ${specialization_id}=64 then "Frost Mage"
              when ${specialization_id}=65 then "Holy Pala"
              when ${specialization_id}=73 then "Prot Warr"
              when ${specialization_id}=105 then "Resto Druid"
              when ${specialization_id}=251 then "Frost DK"
              when ${specialization_id}=257 then "Holy Priest"
              when ${specialization_id}=264 then "Resto Sham"
              else
              ${TABLE}.specialization_name end;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension:  is_arcane{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=62 then 1 else 0 end ;;
  }
  dimension:  is_fire{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=63 then 1 else 0 end ;;
  }
  dimension:  is_frost_mage{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=64 then 1 else 0 end ;;
  }
  dimension:  is_holy_pala{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=65 then 1 else 0 end ;;
  }
  dimension:  is_prot_pala{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=66 then 1 else 0 end ;;
  }
  dimension:  is_retribution{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=70 then 1 else 0 end ;;
  }
  dimension:  is_arms{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=71 then 1 else 0 end ;;
  }
  dimension:  is_fury{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=72 then 1 else 0 end ;;
  }
  dimension:  is_prot_warr{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=73 then 1 else 0 end ;;
  }
  dimension:  is_balance{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=102 then 1 else 0 end ;;
  }
  dimension:  is_feral{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=103 then 1 else 0 end ;;
  }
  dimension:  is_guardian{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=104 then 1 else 0 end ;;
  }
  dimension:  is_resto_druid{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=105 then 1 else 0 end ;;
  }
  dimension:  is_blood{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=250 then 1 else 0 end ;;
  }
  dimension:  is_frost_dk{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=251 then 1 else 0 end ;;
  }
  dimension:  is_unholy{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=252 then 1 else 0 end ;;
  }
  dimension:  is_beast_mastery{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=253 then 1 else 0 end ;;
  }
  dimension:  is_marksmanship{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=254 then 1 else 0 end ;;
  }
  dimension:  is_survival{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=255 then 1 else 0 end ;;
  }
  dimension:  is_discipline{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=256 then 1 else 0 end ;;
  }
  dimension:  is_holy_priest{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=257 then 1 else 0 end ;;
  }
  dimension:  is_shadow{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=258 then 1 else 0 end ;;
  }
  dimension:  is_assassination{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=259 then 1 else 0 end ;;
  }
  dimension:  is_outlaw{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=260 then 1 else 0 end ;;
  }
  dimension:  is_subtlety{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=261 then 1 else 0 end ;;
  }
  dimension:  is_elemental{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=262 then 1 else 0 end ;;
  }
  dimension:  is_enhancement{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=263 then 1 else 0 end ;;
  }
  dimension:  is_resto_sham{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=264 then 1 else 0 end ;;
  }
  dimension:  is_affliction{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=265 then 1 else 0 end ;;
  }
  dimension:  is_demonology{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=266 then 1 else 0 end ;;
  }
  dimension:  is_destruction{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=267 then 1 else 0 end ;;
  }
  dimension:  is_brewmaster{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=268 then 1 else 0 end ;;
  }
  dimension:  is_windwalker{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=269 then 1 else 0 end ;;
  }
  dimension:  is_mistweaver{
    group_label: "healer_dummies"
    type: number
    sql: case when ${specialization_id}=270 then 1 else 0 end ;;
  }
  dimension:  is_havoc{
    group_label: "dps_dummies"
    type: number
    sql: case when ${specialization_id}=577 then 1 else 0 end ;;
  }
  dimension:  is_vengeance{
    group_label: "tank_dummies"
    type: number
    sql: case when ${specialization_id}=581 then 1 else 0 end ;;
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
