connection: "snowflake_product"

include: "/views/*.view"


datagroup: challenges_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: challenges_default_datagroup

label: "Arro Card Challenge Monitoring"

explore: challenge_summary {
  join: user_profile {
    type: inner
    sql_on: ${challenge_summary.user_id} = ${user_profile.user_id} ;;
    relationship: many_to_one
  }
}

explore: backup_payment_sources {
  join: user_profile {
    type: inner
    sql_on: ${backup_payment_sources.user_id} = ${user_profile.user_id} ;;
    relationship: many_to_one
  }
}
