view: devices {
  sql_table_name: accesspoint.devices ;;

  dimension_group: date {
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
    sql: ${TABLE}.date_time ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.location ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
