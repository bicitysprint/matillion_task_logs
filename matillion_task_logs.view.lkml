view: matillion_task_logs {
  sql_table_name: CC.MATILLION_TASK_LOGS ;;

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: component_name {
    type: string
    sql: ${TABLE}."componentName" ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."endTime" ;;
  }

  dimension_group: job_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."jobTimestamp" ;;
  }

  dimension: message {
    type: string
    sql: ${TABLE}."message" ;;
  }

  dimension: row_count {
    type: string
    sql: ${TABLE}."rowCount" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."startTime" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension_group: summary_enqueued {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."summary_enqueuedTime" ;;
  }

  dimension: summary_environment_name {
    type: string
    sql: ${TABLE}."summary_environmentName" ;;
  }

  dimension: summary_group_name {
    type: string
    sql: ${TABLE}."summary_groupName" ;;
  }

  dimension: summary_job_name {
    type: string
    sql: ${TABLE}."summary_jobName" ;;
  }

  dimension: summary_message {
    type: string
    sql: ${TABLE}."summary_message" ;;
  }

  dimension: summary_project_name {
    type: string
    sql: ${TABLE}."summary_projectName" ;;
  }

  dimension: summary_state {
    type: string
    sql: ${TABLE}."summary_state" ;;
  }

  dimension: summary_type {
    type: string
    sql: ${TABLE}."summary_type" ;;
  }

  dimension: summary_version_id {
    type: string
    sql: ${TABLE}."summary_versionID" ;;
  }

  dimension: summary_version_name {
    type: string
    sql: ${TABLE}."summary_versionName" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      component_name,
      summary_group_name,
      summary_project_name,
      summary_version_name,
      summary_environment_name,
      summary_job_name
    ]
  }
}
