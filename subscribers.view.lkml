view: subscribers {
  sql_table_name: accesspoint.users ;;

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
