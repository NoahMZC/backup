view: channels {
  sql_table_name: `mzcdsc-team-200716.Looker_Demo_retail.channels` ;;

  dimension: id {
    type: number
    hidden: yes
    sql: ${TABLE}.ID ;;
  }

  dimension: name {
    type: string
    label: "Channel Name"
    sql: ${TABLE}.NAME ;;
  }
}
