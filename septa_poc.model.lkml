connection: "cgp-dev-accesspoint"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: devices {
  join: subscribers {
    sql_on: ${devices.mac} = ${subscribers.mac} ;;
    relationship: many_to_one
  }
}
explore: subscribers {
  join: devices {
    sql_on: ${subscribers.mac} = ${devices.mac} ;;
    relationship: many_to_one
  }
}
