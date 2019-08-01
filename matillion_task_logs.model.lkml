connection: "db"

# include all the views
include: "*.view"

datagroup: matillion_task_logs_default_datagroup {
  sql_trigger: SELECT sum(id) FROM cc.matillion_task_logs;;
  max_cache_age: "1 hour"
}

persist_with: matillion_task_logs_default_datagroup

explore: matillion_task_logs {
  hidden: yes
}
