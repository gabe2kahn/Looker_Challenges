view: challenge_performance {
  sql_table_name: "CHALLENGES"."CHALLENGE_PERFORMANCE" ;;

  dimension_group: account_open_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ACCOUNT_OPEN_MONTH" ;;
  }
  dimension: apr {
    type: number
    sql: ${TABLE}."APR" ;;
  }
  dimension: autopay_enabled_ind {
    type: string
    sql: ${TABLE}."AUTOPAY_ENABLED_IND" ;;
  }
  dimension: available_credit {
    type: number
    sql: ${TABLE}."AVAILABLE_CREDIT" ;;
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
  dimension: charged_off_account {
    type: number
    sql: ${TABLE}."CHARGED_OFF_ACCOUNT" ;;
  }
  dimension: closed_account {
    type: number
    sql: ${TABLE}."CLOSED_ACCOUNT" ;;
  }
  dimension: credit_limit_charged_off {
    type: number
    sql: ${TABLE}."CREDIT_LIMIT_CHARGED_OFF" ;;
  }
  dimension: credit_limit_closed {
    type: number
    sql: ${TABLE}."CREDIT_LIMIT_CLOSED" ;;
  }
  dimension: credit_limit_open {
    type: number
    sql: ${TABLE}."CREDIT_LIMIT_OPEN" ;;
  }
  dimension: days_overdue {
    type: number
    sql: ${TABLE}."DAYS_OVERDUE" ;;
  }
  dimension: dq_120_150_balance {
    type: number
    sql: ${TABLE}."DQ_120_150_BALANCE" ;;
  }
  dimension: dq_120_150_count {
    type: number
    sql: ${TABLE}."DQ_120_150_COUNT" ;;
  }
  dimension: dq_120_plus_balance {
    type: string
    sql: ${TABLE}."DQ_120PLUS_BALANCE" ;;
  }
  dimension: dq_120_plus_count {
    type: number
    sql: ${TABLE}."DQ_120PLUS_COUNT" ;;
  }
  dimension: dq_150_180_balance {
    type: number
    sql: ${TABLE}."DQ_150_180_BALANCE" ;;
  }
  dimension: dq_150_180_count {
    type: number
    sql: ${TABLE}."DQ_150_180_COUNT" ;;
  }
  dimension: dq_150_plus_balance {
    type: string
    sql: ${TABLE}."DQ_150PLUS_BALANCE" ;;
  }
  dimension: dq_150_plus_count {
    type: number
    sql: ${TABLE}."DQ_150PLUS_COUNT" ;;
  }
  dimension: dq_180_plus_balance {
    type: string
    sql: ${TABLE}."DQ_180PLUS_BALANCE" ;;
  }
  dimension: dq_180_plus_count {
    type: number
    sql: ${TABLE}."DQ_180PLUS_COUNT" ;;
  }
  dimension: dq_1_30_balance {
    type: number
    sql: ${TABLE}."DQ_1_30_BALANCE" ;;
  }
  dimension: dq_1_30_count {
    type: number
    sql: ${TABLE}."DQ_1_30_COUNT" ;;
  }
  dimension: dq_1_plus_balance {
    type: string
    sql: ${TABLE}."DQ_1PLUS_BALANCE" ;;
  }
  dimension: dq_1_plus_count {
    type: number
    sql: ${TABLE}."DQ_1PLUS_COUNT" ;;
  }
  dimension: dq_30_60_balance {
    type: number
    sql: ${TABLE}."DQ_30_60_BALANCE" ;;
  }
  dimension: dq_30_60_count {
    type: number
    sql: ${TABLE}."DQ_30_60_COUNT" ;;
  }
  dimension: dq_30_plus_balance {
    type: string
    sql: ${TABLE}."DQ_30PLUS_BALANCE" ;;
  }
  dimension: dq_30_plus_count {
    type: number
    sql: ${TABLE}."DQ_30PLUS_COUNT" ;;
  }
  dimension: dq_60_90_balance {
    type: number
    sql: ${TABLE}."DQ_60_90_BALANCE" ;;
  }
  dimension: dq_60_90_count {
    type: number
    sql: ${TABLE}."DQ_60_90_COUNT" ;;
  }
  dimension: dq_60_plus_balance {
    type: string
    sql: ${TABLE}."DQ_60PLUS_BALANCE" ;;
  }
  dimension: dq_60_plus_count {
    type: number
    sql: ${TABLE}."DQ_60PLUS_COUNT" ;;
  }
  dimension: dq_90_120_balance {
    type: number
    sql: ${TABLE}."DQ_90_120_BALANCE" ;;
  }
  dimension: dq_90_120_count {
    type: number
    sql: ${TABLE}."DQ_90_120_COUNT" ;;
  }
  dimension: dq_90_plus_balance {
    type: string
    sql: ${TABLE}."DQ_90PLUS_BALANCE" ;;
  }
  dimension: dq_90_plus_count {
    type: number
    sql: ${TABLE}."DQ_90PLUS_COUNT" ;;
  }
  dimension: fees_charged {
    type: number
    sql: ${TABLE}."FEES_CHARGED" ;;
  }
  dimension: gaco {
    type: number
    sql: ${TABLE}."GACO" ;;
  }
  dimension: guco {
    type: number
    sql: ${TABLE}."GUCO" ;;
  }
  dimension: interchange_amount {
    type: number
    sql: ${TABLE}."INTERCHANGE_AMOUNT" ;;
  }
  dimension: interchange_cost {
    type: number
    sql: ${TABLE}."INTERCHANGE_COST" ;;
  }
  dimension: interest_charged {
    type: number
    sql: ${TABLE}."INTEREST_CHARGED" ;;
  }
  dimension_group: last_update_ts {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_UPDATE_TS" ;;
  }
  dimension: naco {
    type: number
    sql: ${TABLE}."NACO" ;;
  }
  dimension: net_purchase_volume {
    type: number
    sql: ${TABLE}."NET_PURCHASE_VOLUME" ;;
  }
  dimension: nuco {
    type: number
    sql: ${TABLE}."NUCO" ;;
  }
  dimension: open_account {
    type: number
    sql: ${TABLE}."OPEN_ACCOUNT" ;;
  }
  dimension: overdue_ind {
    type: yesno
    sql: ${TABLE}."OVERDUE_IND" ;;
  }
  dimension: payment_volume {
    type: number
    sql: ${TABLE}."PAYMENT_VOLUME" ;;
  }
  dimension: prev_statement_balance {
    type: number
    sql: ${TABLE}."PREV_STATEMENT_BALANCE" ;;
  }
  dimension: prev_statement_fees_paid {
    type: string
    sql: ${TABLE}."PREV_STATEMENT_FEES_PAID" ;;
  }
  dimension: prev_statement_interest_paid {
    type: string
    sql: ${TABLE}."PREV_STATEMENT_INTEREST_PAID" ;;
  }
  dimension: principal_balance {
    type: string
    sql: ${TABLE}."PRINCIPAL_BALANCE" ;;
  }
  dimension: recoveries {
    type: number
    sql: ${TABLE}."RECOVERIES" ;;
  }
  dimension: returned_payment_volume {
    type: number
    sql: ${TABLE}."RETURNED_PAYMENT_VOLUME" ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}."REVENUE" ;;
  }
  dimension: reward_type {
    type: string
    sql: ${TABLE}."REWARD_TYPE" ;;
  }
  dimension: statement_balance {
    type: number
    sql: ${TABLE}."STATEMENT_BALANCE" ;;
  }
  dimension_group: statement_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."STATEMENT_END_DATE" ;;
  }
  dimension_group: statement_month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."STATEMENT_MONTH" ;;
  }
  dimension: statement_number {
    type: number
    sql: ${TABLE}."STATEMENT_NUMBER" ;;
  }
  dimension: statement_recency {
    type: number
    sql: ${TABLE}."STATEMENT_RECENCY" ;;
  }
  dimension: test_group {
    type: string
    sql: ${TABLE}."TEST_GROUP" ;;
  }
  dimension: total_purchase_amount {
    type: number
    sql: ${TABLE}."TOTAL_PURCHASE_AMOUNT" ;;
  }
  dimension: total_refund_amount {
    type: number
    sql: ${TABLE}."TOTAL_REFUND_AMOUNT" ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
  }
}
