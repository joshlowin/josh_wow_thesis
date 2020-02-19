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
    html:{% if value == 'Death Knight' %}
    <font color="#C41F3B">{{ value }}</font>
    {% elsif value == 'Demon Hunter' %}
    <font color="#A330C9">{{ value }}</font>
    {% elsif value == 'Druid' %}
    <font color="#FF7D0A">{{ value }}</font>
    {% elsif value == 'Hunter' %}
    <font color="#ABD473">{{ value }}</font>
    {% elsif value == 'Mage' %}
    <font color="#69CCF0">{{ value }}</font>
    {% elsif value == 'Monk' %}
    <font color="#00FF96">{{ value }}</font>
    {% elsif value == 'Paladin' %}
    <font color="#F58CBA">{{ value }}</font>
    {% elsif value == 'Priest' %}
    <font color="#dedede">{{ value }}</font>
    {% elsif value == 'Rogue' %}
    <font color="#FFF569">{{ value }}</font>
    {% elsif value == 'Shaman' %}
    <font color="#0070DE">{{ value }}</font>
    {% elsif value == 'Warlock' %}
    <font color="#9482C9">{{ value }}</font>
    {% elsif value == 'Warrior' %}
    <font color="#C79C6E">{{ value }}</font>
    {% endif %};;
  }

  dimension: class_crest {
    type: string
    sql: ${TABLE}.class_name ;;
    html:{% if value == 'Death Knight' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Death_Knight_Crest.png" />
    {% elsif value == 'Demon Hunter' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Demon_Hunter_Crest.png" />
    {% elsif value == 'Druid' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Druid_Crest.png" />
    {% elsif value == 'Hunter' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Hunter_Crest.png" />
    {% elsif value == 'Mage' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Mage_Crest.png" />
    {% elsif value == 'Monk' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Monk_Crest.png" />
    {% elsif value == 'Paladin' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Paladin_Crest.png" />
    {% elsif value == 'Priest' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Priest_Crest.png" />
    {% elsif value == 'Rogue' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Rogue_Crest.png" />
    {% elsif value == 'Shaman' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Shaman_Crest.png" />
    {% elsif value == 'Warlock' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Warlock_Crest.png" />
    {% elsif value == 'Warrior' %}
    <img src="https://wowcrests.s3-us-west-1.amazonaws.com/Warrior_Crest.png" />
    {% endif %} ;;
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
