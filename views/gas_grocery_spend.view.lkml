view: gas_grocery_spend {
  sql_table_name: "CHALLENGES"."GAS_GROCERY_SPEND" ;;

  dimension_group: challenge_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_CREATED_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_id {
    type: number
    sql: ${TABLE}."CHALLENGE_ID" ;;
  }
  dimension: challenge_start_account_age {
    type: number
    sql: ${TABLE}."CHALLENGE_START_ACCOUNT_AGE" ;;
  }
  dimension: challenge_start_acrm1 {
    type: number
    sql: ${TABLE}."CHALLENGE_START_ACRM1" ;;
  }
  dimension: challenge_start_overdue_ind {
    type: yesno
    sql: ${TABLE}."CHALLENGE_START_OVERDUE_IND" ;;
  }
  dimension_group: challenge_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_START_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_status {
    type: string
    sql: ${TABLE}."CHALLENGE_STATUS" ;;
  }

  dimension: groc_gas_spend {
    type: number
    sql: ${TABLE}."GROC_GAS_SPEND" ;;
    value_format_name: usd
  }

  dimension: months_since_challenge {
    type: number
    sql: ${TABLE}."MONTHS_SINCE_CHALLENGE" ;;
  }
  dimension: reward_type {
    type: string
    sql: ${TABLE}."REWARD_TYPE" ;;
  }
  dimension_group: spend {
    type: time
    timeframes: [month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SPEND_MONTH" ;;
  }
  dimension: test_group {
    type: string
    sql: ${TABLE}."TEST_GROUP" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: average_groc_gas_spend {
    type: average
    sql: ${groc_gas_spend} ;;
    value_format_name: usd
  }

  measure: median_groc_gas_views {
    type: number
    sql: MEDIAN(${groc_gas_spend}) ;;
    value_format_name: usd
  }

  measure: users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: users_with_groc_gas_spend {
    type: count_distinct
    sql: CASE WHEN ${groc_gas_spend} > 0 THEN ${user_id} END ;;
  }

  measure: percent_users_with_groc_gas_spend {
    type: number
    sql: ${users_with_groc_gas_spend} / NULLIF(${users},0) ;;
    value_format_name: percent_1
  }

}
