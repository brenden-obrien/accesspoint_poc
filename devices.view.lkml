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

  dimension: zone {
    type: string
    sql: ${TABLE}.zone ;;
  }

  dimension: mac {
    type: string
    sql: ${TABLE}.mac ;;
  }

  dimension: coordinates {
    type: number
    sql: ${TABLE}.coordinates ;;
  }

  dimension: floor_number{
    type: number
    sql: ${TABLE}.floor_number ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
