connection: "chouchou-prod-clog"

include: "/*/*.view.lkml"                       # include all views in this project
include: "/lookml_dashboards/*.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# Model Configuration
datagroup: events_raw { sql_trigger:  SELECT current_date  ;; }
named_value_format: large_usd { value_format: "[>=1000000]\"$\"0.00,,\"M\";[>=1000]\"$\"0.00,\"K\";\"$\"0.00" }
named_value_format: large_jpy { value_format: "[>=1000000]\"¥\"0,,\"M\";[>=1000]\"¥\"0,\"K\";\"¥\"0" }
named_value_format: large_number { value_format: "[>=1000000]0.00,,\"M\";[>=1000]0.00,\"K\";0" }

# Explores
explore: events {
  persist_with: events_raw

  always_filter: {
    filters: {
      field: event_date
      value: "last 7 days"
    }
  }

  join: sales {
    type: left_outer
    relationship: one_to_many
    sql_on: ${events.user_id} = ${sales.requester_id}
          AND ${events.event_date} = ${sales.logged_on} ;;
  }

  join: sessions {
    sql_on: ${events.user_id} = ${sessions.user_id}
          AND ${events.event_raw} >= ${sessions.session_start_raw}
          AND ${events.event_raw} <= ${sessions.session_end_raw} ;;
    relationship: many_to_one
  }

  join: user_facts {
    view_label: "User Lifetime Values"
    relationship: many_to_one
    sql_on: ${events.user_id} = ${user_facts.user_id} ;;
  }
}

explore: funnel_explorer {
  description: "Player Session Funnels"
  persist_for: "24 hours"

  always_filter: {
    filters: {
      field: event_time
      value: "30 days"
    }
    filters: {
      field: game_name
      value: "chouchou_prod_clog"
    }
  }

  join: user_facts {
    sql_on: ${funnel_explorer.user_id} = ${user_facts.user_id} ;;
    relationship: many_to_one
  }
}

explore: sessions {
  label: "Sessions and Users"
  description: "Use this to look at a compressed view of Users and Sessions (without event level data)"
  join: user_facts {
    relationship: many_to_one
    sql_on: ${sessions.user_id} = ${user_facts.user_id} ;;
  }
}
