view: fraud_detection {
    derived_table: {
      sql:  SELECT dungeon_name, avg(duration) as duration2 FROM mythic_leaderboards.leaderboards group by dungeon_name
            UNION DISTINCT
            SELECT dungeon_name, avg(duration) as duration2  FROM mythic_leaderboards.leaderboards_2 group by dungeon_name
            UNION DISTINCT
            SELECT dungeon_name, avg(duration) as duration2  FROM mythic_leaderboards.leaderboards_3 group by dungeon_name
            UNION DISTINCT
            SELECT dungeon_name, avg(duration) as duration2 FROM mythic_leaderboards.leaderboards_4 group by dungeon_name
            UNION DISTINCT
            SELECT dungeon_name, avg(duration) as duration2  FROM mythic_leaderboards.leaderboards_5 group by dungeon_name
              ;;
      persist_for: "6000 hours"
    }

  dimension: dungeon_name {
    type: string
    sql: ${TABLE}.dungeon_name ;;
    }

  dimension: duration2  {
  type: number
  sql: ${TABLE}.duration2 ;;
 }



  }
