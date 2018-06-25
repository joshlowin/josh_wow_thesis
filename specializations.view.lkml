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
  dimension: spec_icon {
    type: string
    sql: ${TABLE}.specialization_name ;;
    html: {% if value == 'Arcane' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/7/7d/Arc_Spec_RoundIcon.png/revision/latest?cb=20070523204450"  height="20" width="20" />
    {% elsif value == 'Fire' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/c/c8/Fire_Spec_RoundIcon.png/revision/latest?cb=20070523205204" height="20" width="20" />
    {% elsif value == 'Frost Mage' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/b/b5/Frost_Spec_RoundIcon.png/revision/latest?cb=20070523205315"  height="20" width="20" />
    {% elsif value == 'Holy Pala' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/e/ef/PaHoly_Spec_RoundIcon.png/revision/latest?cb=20070523205654" height="20" width="20" />
    {% elsif value == 'Prot Pala' %}
   <img src="https://vignette.wikia.nocookie.net/wowwiki/images/0/09/PProt_Spec_RoundIcon.png/revision/latest?cb=20070523205725" height="20" width="20" />
    {% elsif value == 'Retribution' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/9/9e/Ret_Spec_RoundIcon.png/revision/latest?cb=20070523205815" height="20" width="20" />
    {% elsif value == 'Arms' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/9/98/APB_Warrior_Arms.png/revision/latest?cb=20130406024148" height="20" width="20" />
    {% elsif value == 'Fury' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/2/2f/Fury_Spec_RoundIcon.png/revision/latest?cb=20070523205252" height="20" width="20" />
    {% elsif value == 'Prot Warr' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/c/c6/WProt_Spec_RoundIcon.png/revision/latest?cb=20070523210134" height="20" width="20" />
    {% elsif value == 'Balance' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/5/5e/Bal_Spec_RoundIcon.png/revision/latest?cb=20070523204553" height="20" width="20" />
    {% elsif value == 'Feral' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/7/72/New_Feral_Spec_RoundIcon.png/revision/latest?cb=20120429151803" height="20" width="20" />
    {% elsif value == 'Guardian' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/8/8b/Feral_Spec_RoundIcon.png/revision/latest?cb=20070523205144" height="20" width="20" />
    {% elsif value == 'Resto Druid' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/4/4b/DResto_Spec_RoundIcon.png/revision/latest?cb=20070523204931" height="20" width="20" />
    {% elsif value == 'Blood' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/e/ee/Blood_Spec_RoundIcon.png/revision/latest?cb=20090105191528" height="20" width="20" />
    {% elsif value == 'Frost dk' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/a/ae/DkFrost_Spec_RoundIcon.png/revision/latest?cb=20090105191053" height="20" width="20" />
    {% elsif value == 'Unholy' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/1/1f/Unholy_Spec_RoundIcon.png/revision/latest?cb=20090105191541" height="20" width="20" />
    {% elsif value == 'Beast Mastery' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/0/03/BM_Spec_RoundIcon.png/revision/latest?cb=20070523204646" height="20" width="20" />
    {% elsif value == 'Marksmanship' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/9/9b/Marks_Spec_RoundIcon.png/revision/latest?cb=20070523205514" height="20" width="20" />
    {% elsif value == 'Survival' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/c/c2/Surv_Spec_RoundIcon.png/revision/latest?cb=20070523210031" height="20" width="20" />
    {% elsif value == 'Discipline' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/f/f9/Disc_Spec_RoundIcon.png/revision/latest?cb=20070523204910" height="20" width="20" />
    {% elsif value == 'Holy Priest' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/e/ef/PaHoly_Spec_RoundIcon.png/revision/latest?cb=20070523205654" height="20" width="20" />
    {% elsif value == 'Shadow' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/4/47/Shad_Spec_RoundIcon.png/revision/latest?cb=20070523205847" height="20" width="20" />
    {% elsif value == 'Assassination' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/2/2e/Arms_Spec_RoundIcon.png/revision/latest?cb=20070523204515" height="20" width="20" />
    {% elsif value == 'Outlaw' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/a/a5/APB_Rogue_Combat.png/revision/latest?cb=20070702155455" height="20" width="20" />
    {% elsif value == 'Subtlety' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/9/90/Subt_Spec_RoundIcon.png/revision/latest?cb=20070523210015" height="20" width="20" />
    {% elsif value == 'Elemental' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/c/c6/Elem_Spec_RoundIcon.png/revision/latest?cb=20070523204952" height="20" width="20" />
    {% elsif value == 'Enhancement' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/a/a3/Enh_Spec_RoundIcon.png/revision/latest?cb=20070523205101" height="20" width="20" />
    {% elsif value == 'Resto Sham' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/7/76/SResto_Spec_RoundIcon.png/revision/latest?cb=20070523205959" height="20" width="20" />
    {% elsif value == 'Affliction' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/b/be/Affl_spec_roundicon.png/revision/latest?cb=20070523204347" height="20" width="20" />
    {% elsif value == 'Demonology' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/9/9f/Demon_Spec_RoundIcon.png/revision/latest?cb=20070523204833" height="20" width="20" />
    {% elsif value == 'Destruction' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/6/69/Destro_Spec_RoundIcon.png/revision/latest?cb=20070523204852" height="20" width="20" />
    {% elsif value == 'Brewmaster' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/d/dc/Brew_Spec_RoundIcon.png/revision/latest?cb=20120429150652" height="20" width="20" />
    {% elsif value == 'Windwalker' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/d/db/Wind_Spec_RoundIcon.png/revision/latest?cb=20120429150653" height="20" width="20" />
    {% elsif value == 'Mistweaver' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/1/1f/Mist_Spec_RoundIcon.png/revision/latest?cb=20120429150652" height="20" width="20" />
    {% elsif value == 'Havoc' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/d/d5/IconSmall_Illidan.gif/revision/latest?cb=20090303210737" height="20" width="20" />
    {% elsif value == 'Vengeance' %}
    <img src="https://vignette.wikia.nocookie.net/wowwiki/images/6/69/IconSmall_Supremus.gif/revision/latest?cb=20090308114003" height="20" width="20" />
    {% endif %};;
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
