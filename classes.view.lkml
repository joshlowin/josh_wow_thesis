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
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/5/5d/Death_Knight_Crest.png?version=b7f245e0515a2541a09d102fbb0ed52f" />
    {% elsif value == 'Demon Hunter' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/0/00/Demon_Hunter_Crest.png?version=bf68bd5041d36b5ea73b21d9b77867d1" />
    {% elsif value == 'Druid' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/e/ec/Druid_Crest.png?version=b6a65db303b9320235dc47747b11ffe3" />
    {% elsif value == 'Hunter' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/3/3e/Hunter_Crest.png?version=b1d25c78b98d82889b293796f1ed7513" />
    {% elsif value == 'Mage' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/0/04/Mage_Crest.png?version=00383a73f5d77cb31d11c5425b2a508d" />
    {% elsif value == 'Monk' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/a/a4/Pandaren_Crest.png?version=7e95ace156e71e5cfc9ca9fcec2bc2ea" />
    {% elsif value == 'Paladin' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/8/82/Paladin_Crest.png?version=7a719f0d395c4a8a3d2b53897616e6b7" />
    {% elsif value == 'Priest' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/5/50/Priest_Crest.png?version=0a2f5a12ca1c2a287ca55ebdd1c01adc" />
    {% elsif value == 'Rogue' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/0/02/Rogue_Crest.png?version=d833a1f63405c5085e8e32393e2c642b" />
    {% elsif value == 'Shaman' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/d/d2/Shaman_Crest.png?version=4974dbe01c70e8046d0309f86dfbd0ac" />
    {% elsif value == 'Warlock' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/5/5e/Warlock_Crest.png?version=216361af51eef1e4c28f153e552cb8cb" />
    {% elsif value == 'Warrior' %}
    <img src="https://d1u5p3l4wpay3k.cloudfront.net/wowpedia/4/4f/Warrior_Crest.png?version=28165d45446d9b38d50aa8f12c523a79" />
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
