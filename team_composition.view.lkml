# If necessary, uncomment the line below to include explore_source.
#include: "rg_wow_thesis.model.lkml"

view: team_composition {
  derived_table: {
    explore_source: all_leaderboards {
      column: team_id {}
      column: spec_list {field: specializations.spec_list}
      derived_column: composition {
        sql: ARRAY_TO_STRING(ARRAY(SELECT sl FROM UNNEST(SPLIT(spec_list, '|RECORD|')) AS sl ORDER BY 1), ' - ') ;;
      }
    }
  }

  dimension: team_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.team_id ;;
  }

  dimension: keystone_level {
    type: number
    sql: CAST(SUBSTR(${team_id},1,STRPOS(${team_id},"-")-1) AS NUMERIC) ;;
  }
  dimension: spec_list {
    type: string
    sql: ${TABLE}.spec_list ;;
    hidden: yes
  }

  dimension: composition {
    type: string
    sql: ${TABLE}.composition ;;
  }

  dimension: is_complete_team {
    type: yesno
    sql: IF(LENGTH(${composition}) - LENGTH(REGEXP_REPLACE(${composition}, '-', ''))=4,true,false) ;;
  }

  measure: count {
    type: count_distinct
    sql: ${team_id} ;;
  }
}
