view: autopay_success {
  sql_table_name: "CHALLENGES"."AUTOPAY_SUCCESS" ;;

  dimension_group: autopay {
    type: time
    timeframes: [month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."AUTOPAY_MONTH" ;;
  }
  dimension: autopays {
    type: number
    sql: ${TABLE}."AUTOPAYS" ;;
  }
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
  dimension_group: last_update {
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

  measure: users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: users_with_successful_autopays {
    type: count_distinct
    sql: CASE WHEN ${successful_autopays} > 0 THEN ${user_id} END ;;
  }

  measure: total_successful_autopays {
    type: sum
    sql: ${successful_autopays} ;;
  }

  measure: total_autopays {
    type: sum
    sql: ${autopays} ;;
  }

  measure: autopay_success_rate {
    type: number
    sql: ${total_successful_autopays}/NULLIF(${total_autopays},0) ;;
    value_format_name: percent_1
  }

  measure: user_autopay_success_rate {
    type: number
    sql: ${users_with_successful_autopays}/NULLIF(${users},0) ;;
    value_format_name: percent_1
  }
}
