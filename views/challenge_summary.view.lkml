view: challenge_summary {
  sql_table_name: "CHALLENGES"."CHALLENGE_SUMMARY" ;;

  dimension: auto_enrollment_ind {
    type: yesno
    sql: ${TABLE}."AUTO_ENROLLMENT_IND" ;;
  }
  dimension_group: challenge_created_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_CREATED_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_end_account_age {
    type: number
    sql: ${TABLE}."CHALLENGE_END_ACCOUNT_AGE" ;;
  }
  dimension: challenge_end_acrm1 {
    type: number
    sql: ${TABLE}."CHALLENGE_END_ACRM1" ;;
  }
  dimension: challenge_end_balance {
    type: number
    sql: ${TABLE}."CHALLENGE_END_BALANCE" ;;
  }
  dimension: challenge_end_cl {
    type: number
    sql: ${TABLE}."CHALLENGE_END_CL" ;;
  }
  dimension: challenge_end_days_overdue {
    type: number
    sql: ${TABLE}."CHALLENGE_END_DAYS_OVERDUE" ;;
  }
  dimension: challenge_end_overdue_ind {
    type: yesno
    sql: ${TABLE}."CHALLENGE_END_OVERDUE_IND" ;;
  }
  dimension_group: challenge_end_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_END_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_end_utilization {
    type: number
    sql: ${TABLE}."CHALLENGE_END_UTILIZATION" ;;
  }
  dimension: challenge_id {
    type: number
    primary_key: yes
    sql: ${TABLE}."CHALLENGE_ID" ;;
  }
  dimension_group: challenge_last_updated_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_LAST_UPDATED_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_start_account_age {
    type: number
    sql: ${TABLE}."CHALLENGE_START_ACCOUNT_AGE" ;;
  }
  dimension: challenge_start_acrm1 {
    type: number
    sql: ${TABLE}."CHALLENGE_START_ACRM1" ;;
  }
  dimension: challenge_start_balance {
    type: number
    sql: ${TABLE}."CHALLENGE_START_BALANCE" ;;
  }
  dimension: challenge_start_cl {
    type: number
    sql: ${TABLE}."CHALLENGE_START_CL" ;;
  }
  dimension: challenge_start_days_overdue {
    type: number
    sql: ${TABLE}."CHALLENGE_START_DAYS_OVERDUE" ;;
  }
  dimension: challenge_start_overdue_ind {
    type: yesno
    sql: ${TABLE}."CHALLENGE_START_OVERDUE_IND" ;;
  }
  dimension_group: challenge_start_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_START_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_start_utilization {
    type: number
    sql: ${TABLE}."CHALLENGE_START_UTILIZATION" ;;
  }
  dimension: challenge_status {
    type: string
    sql: ${TABLE}."CHALLENGE_STATUS" ;;
  }
  dimension: challenge_type {
    type: string
    sql: ${TABLE}."CHALLENGE_TYPE" ;;
  }
  dimension: current_progress_percentage {
    type: number
    sql: ${TABLE}."CURRENT_PROGRESS_PERCENTAGE" ;;
  }
  dimension: reward_amount {
    type: number
    sql: ${TABLE}."REWARD_AMOUNT" ;;
  }
  dimension: reward_claimed_ind {
    type: yesno
    sql: ${TABLE}."REWARD_CLAIMED_IND" ;;
  }
  dimension_group: reward_claimed_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."REWARD_CLAIMED_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: reward_type {
    type: string
    sql: ${TABLE}."REWARD_TYPE" ;;
  }
  dimension: test_group {
    type: string
    sql: ${TABLE}."TEST_GROUP" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  measure: total_challenges {
    type: count_distinct
    sql: ${challenge_id} ;;
  }
}
