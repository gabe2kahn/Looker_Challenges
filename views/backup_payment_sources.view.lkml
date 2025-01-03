view: backup_payment_sources {
  sql_table_name: "CHALLENGES"."BACKUP_PAYMENT_SOURCES" ;;

  dimension: backup_source_enabled {
    type: yesno
    sql: ${TABLE}."BACKUP_SOURCE_ENABLED" ;;
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

  dimension: days_since_challenge_creation {
    type: number
    sql: DATEDIFF(DAYS,${challenge_created_date},${snap_date}) ;;
  }

  dimension: primary_key {
    type: string
    sql: ${user_id}||${snap_date} ;;
  }

  dimension: reward_type {
    type: string
    sql: ${TABLE}."REWARD_TYPE" ;;
  }
  dimension_group: snap {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SNAP_DATE" ;;
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

  measure: backup_payment_enabled_users {
    type: count_distinct
    sql: CASE WHEN ${backup_source_enabled} = True THEN ${user_id} END ;;
  }

  measure: backup_payment_enabled_rate {
    type: number
    sql: ${backup_payment_enabled_users}/${users} ;;
    value_format_name: percent_1
  }
}
