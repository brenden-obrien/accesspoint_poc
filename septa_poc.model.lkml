connection: "cgp-dev-accesspoint"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: devices {}
explore: subscribers {
  join: devices {
    sql_on: ${subscribers.mac} = ${devices.mac} ;;
    relationship: many_to_one
  }
}
