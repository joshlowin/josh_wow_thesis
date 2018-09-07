view: fraud_detection {
    derived_table: {
      sql:  SELECT dungeon_name, keystone_level, avg(duration/1000/60) as duration2 FROM mythic_leaderboards.leaderboards group by dungeon_name, keystone_level
            UNION DISTINCT
            SELECT dungeon_name, keystone_level, avg(duration/1000/60) as duration2  FROM mythic_leaderboards.leaderboards_2 group by dungeon_name, keystone_level
            UNION DISTINCT
            SELECT dungeon_name, keystone_level, avg(duration/1000/60) as duration2  FROM mythic_leaderboards.leaderboards_3 group by dungeon_name, keystone_level
            UNION DISTINCT
            SELECT dungeon_name, keystone_level, avg(duration/1000/60) as duration2 FROM mythic_leaderboards.leaderboards_4 group by dungeon_name, keystone_level
            UNION DISTINCT
            SELECT dungeon_name, keystone_level,  avg(duration/1000/60) as duration2  FROM mythic_leaderboards.leaderboards_5 group by dungeon_name, keystone_level
              ;;
      persist_for: "6000 hours"
    }

  dimension: dungeon_name {
    type: string
    sql: ${TABLE}.dungeon_name ;;
    }

  dimension: duration2  {
  type: string
  sql: FORMAT_TIMESTAMP("%X", TIMESTAMP_MILLIS(${TABLE}.duration2));;
 }

  dimension: keystone_level {
    type: number
    sql: ${TABLE}.keystone_level ;;
  }


  }
