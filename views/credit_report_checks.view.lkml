view: credit_report_checks {
  sql_table_name: "CHALLENGES"."CREDIT_REPORT_CHECKS" ;;

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
  dimension: num_credit_report_views {
    type: number
    sql: ${TABLE}."NUM_CREDIT_REPORT_VIEWS" ;;
  }

  dimension_group: report_view {
    type: time
    timeframes: [month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."REPORT_VIEW_MONTH" ;;
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

  measure: average_credit_report_views {
    type: average
    sql: ${num_credit_report_views} ;;
    value_format_name: decimal_2
  }

  measure: median_credit_report_views {
    type: number
    sql: MEDIAN(${num_credit_report_views}) ;;
  }

  measure: users {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: users_with_report_view {
    type: count_distinct
    sql: CASE WHEN ${num_credit_report_views} > 0 THEN ${user_id} END ;;
  }

  measure: percent_users_with_report_view {
    type: number
    sql: ${users_with_report_view} / NULLIF(${users},0) ;;
    value_format_name: percent_1
  }
}
