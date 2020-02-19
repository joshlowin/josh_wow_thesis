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
  type: number
  sql: ${TABLE}.character_id ;;
  hidden: yes
  drill_fields: [character_name,classes.class_name, specializations.specialization_name, dungeon_name, time, avg_duration, keystone_level]
}

dimension: uid {
  primary_key: yes
  type: string
  sql: CONCAT(CAST(${character_id} AS STRING),"-",CAST(${realm_id} AS STRING),"-",
              CAST(${dungeon_id} AS STRING),"-",CAST(${duration} AS STRING),"-",
              CAST(${keystone_level} AS STRING)) ;;
}

dimension: character_name {
  type: string
  sql: ${TABLE}.character_name ;;
  html:{% if classes.class_name._value == 'Death Knight' %}
      <p style="background:linear-gradient(to right, #FFFFFF, #C41F3B)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Demon Hunter' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#A330C9)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Druid' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#FF7D0A)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Hunter' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#ABD473)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Mage' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#69CCF0)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Monk' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#00FF96)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Paladin' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#F58CBA)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Priest' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#dedede)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Rogue' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#FFF569)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Shaman' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#0070DE)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Warlock' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#9482C9)">{{ value }}</p>
    {% elsif classes.class_name._value == 'Warrior' %}
      <p style="background:linear-gradient(to right, #FFFFFF,#C79C6E)">{{ value }}</p>
    {% endif %};;
  drill_fields: [character_id, classes.class_name, specializations.specialization_name, dungeon_name, duration, avg_duration, keystone_level]
}

  measure: count {
    type: count_distinct
    sql: ${uid} ;;
    drill_fields: [time, character_name, realm_name, dungeon_name, classes.class_name, specializations.specialization_name]
    link: {
      label:"Class Dashboard"
      url: "https://dcl.dev.looker.com/dashboards/607"
    }
    link: {
      label: "Dungeon Dashboard"
      url: "https://dcl.dev.looker.com/dashboards/608"
    }
  }

dimension: completed_at {
  type: string
  sql: EXTRACT(DATE FROM TIMESTAMP_MILLIS(${TABLE}.completed_at)) ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, dungeon_name, duration, keystone_level]
}

dimension: dungeon_id {
  type: number
  sql: ${TABLE}.dungeon_id ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, avg_duration, keystone_level]
}

dimension: dungeon_name {
  type: string
  sql: ${TABLE}.dungeon_name ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, avg_duration, keystone_level]
}

dimension: time {
  type: string
  sql: FORMAT_TIMESTAMP("%X", TIMESTAMP_MILLIS(${TABLE}.duration));;
  drill_fields: [character_id, character_name, specializations.specialization_name, dungeon_name, keystone_level]
}

dimension: duration {
  type: number
  sql: ROUND(${TABLE}.duration/1000,4);;
}

  measure: avg_duration {
    type: average
    label: "Average Duration in Seconds"
    filters: {
      field: duration
      value: "< 12000"
    }
    sql: ${duration} ;;
#   hidden: yes
    drill_fields: [character_id, character_name, classes.class_name, specializations.specialization_name, dungeon_name, time, completed_at, keystone_level]
  }

dimension: faction {
  type: string
  sql: ${TABLE}.faction ;;
  drill_fields: [character_id, character_name, specializations.specialization_name]
}

dimension: keystone_level {
  type: number
  sql: ${TABLE}.keystone_level ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, dungeon_name, time, avg_duration, completed_at, period]
}

dimension: period {
  type: number
  sql: ${TABLE}.period ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, dungeon_name, time, avg_duration, keystone_level]
}

dimension: ranking {
  type: number
  sql: ${TABLE}.ranking ;;
  drill_fields: [character_id, character_name, specializations.specialization_name, dungeon_name, avg_duration, completed_at, keystone_level]
}

dimension: realm_id {
  type: number
  sql: ${TABLE}.realm_id ;;
  drill_fields: [character_id, character_name, specializations.specialization_name]
}

dimension: realm_name {
  type: string
  sql: ${TABLE}.realm_name ;;
  drill_fields: [character_id, character_name, specializations.specialization_name]
}

dimension: specialization {
  type: number
  sql: ${TABLE}.specialization ;;
  hidden: yes
  drill_fields: [character_id, character_name, specializations.specialization_name]
}

dimension: distinct_ids {
  type: number
  sql: DISTINCT(${TABLE}.character_id) ;;
  drill_fields: [character_name, specializations.specialization_name, dungeon_name, time, avg_duration, keystone_level]
}

measure: retained_player {
  type: number
  value_format: "0.00\%"
  sql:  LAG(${count}) over (partition by specializations.specialization_name order by ${keystone_level});;
}

measure: period_growth {
  type: percent_of_previous
  sql: ${count} ;;
}

measure: duration_growth {
  type: percent_of_previous
  sql: ${avg_duration} ;;
}

## measure groups for spec type and individual count

measure: arcane_count {
  group_label: "dps_counts"
  type: count
  filters: {
    field: specialization
    value: "=62"
  }
}
measure: fire_count {
  group_label: "dps_counts"
  type: count
  filters: {
    field: specialization
    value: "=63"
  }
}
  measure: frost_mage_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=64"
    }
  }

  measure: holy_pala_count {
    group_label: "healer_counts"
    type: count
    filters: {
      field: specialization
      value: "=65"
    }
  }

  measure: prot_pala_count {
    group_label: "tank_counts"
    type: count
    filters: {
      field: specialization
      value: "=66"
    }
  }

  measure: retribution_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=70"
    }
  }

  measure: arms_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=71"
    }
  }

  measure: fury_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=72"
    }
  }
  measure: prot_warr_count {
    group_label: "tank_counts"
    type: count
    filters: {
      field: specialization
      value: "=73"
    }
  }
  measure: balance_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=102"
    }
  }
  measure: feral_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=103"
    }
  }
measure: guardian_count {
  group_label: "tank_counts"
  type: count
  filters: {
    field: specialization
    value: "=104"
  }
}
measure: resto_druid_count {
  group_label: "healer_counts"
  type: count
  filters: {
    field: specialization
    value: "=105"
  }
}
  measure: blood_count {
    group_label: "tank_counts"
    type: count
    filters: {
      field: specialization
      value: "=250"
    }
  }
  measure: frost_dk_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=251"
    }
  }
  measure: unholy_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=252"
    }
  }
  measure: beast_mastery_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=253"
    }
  }
  measure: marksmanship_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=254"
    }
  }
    measure: survival_count {
      group_label: "dps_counts"
      type: count
      filters: {
        field: specialization
        value: "=255"
      }
    }
  measure: discipline_count {
    group_label: "healer_counts"
    type: count
    filters: {
      field: specialization
      value: "=256"
    }
  }
  measure: holy_priest_count {
    group_label: "healer_counts"
    type: count
    filters: {
      field: specialization
      value: "=257"
    }
  }
  measure: shadow_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=258"
    }
  }
  measure: assassination_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=259"
    }
  }
  measure: outlaw_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=260"
    }
  }
  measure: subtlety_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=261"
    }
  }
  measure: elemental_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=262"
    }
  }
  measure: enhancement_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=263"
    }
  }
  measure: resto_sham_count {
    group_label: "healer_counts"
    type: count
    filters: {
      field: specialization
      value: "=264"
    }
  }
  measure: affliction_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=265"
    }
  }
  measure: demonology_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=266"
    }
  }
  measure: destruction_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=267"
    }
  }
  measure: brewmaster_count {
    group_label: "tank_counts"
    type: count
    filters: {
      field: specialization
      value: "=268"
    }
  }
  measure: windwalker_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=269"
    }
  }
  measure: mistweaver_count {
    group_label: "healer_counts"
    type: count
    filters: {
      field: specialization
      value: "=270"
    }
  }
  measure: havoc_count {
    group_label: "dps_counts"
    type: count
    filters: {
      field: specialization
      value: "=577"
    }
  }
  measure: vengeance_count {
    group_label: "tank_counts"
    type: count
    filters: {
      field: specialization
      value: "=581"
    }
  }

## END OF SPEC COUNTS



measure: avg_time {
  type: string
  sql: FORMAT_TIMESTAMP("%X", TIMESTAMP_MILLIS(CAST(${avg_duration} AS INT64))) ;;
  hidden: yes
  drill_fields: [character_id, character_name, classes.class_name, specializations.specialization_name, dungeon_name, time, completed_at, keystone_level]
}
}
