view: autopay_success {
  sql_table_name: "CHALLENGES"."AUTOPAY_SUCCESS" ;;

  dimension_group: autopay_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."AUTOPAY_MONTH" ;;
  }
  dimension: autopays {
    type: number
    sql: ${TABLE}."AUTOPAYS" ;;
  }
  dimension_group: challenge_created_ts {
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
  dimension_group: challenge_start_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CHALLENGE_START_TS" AS TIMESTAMP_NTZ) ;;
  }
  dimension: challenge_status {
    type: string
    sql: ${TABLE}."CHALLENGE_STATUS" ;;
  }
  dimension_group: last_update_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_UPDATE_TS" ;;
  }
  dimension: months_since_challenge {
    type: number
    sql: ${TABLE}."MONTHS_SINCE_CHALLENGE" ;;
  }
  dimension: reward_type {
    type: string
    sql: ${TABLE}."REWARD_TYPE" ;;
  }
  dimension: successful_autopays {
    type: number
    sql: ${TABLE}."SUCCESSFUL_AUTOPAYS" ;;
  }
  dimension: test_group {
    type: string
    sql: ${TABLE}."TEST_GROUP" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
  }
}
