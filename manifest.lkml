## What table houses your events?
constant: events_table {
  value: "`daily_user_logs`"
}
## When did the event occour?
constant: timestamp_field {
  value: "logged_at"
}

## What country was the event fired from?
constant: country_field {
  value: "country"
}

## is as the device's platform?
constant: platform_field {
  value: "platform"
}

## What is the game version?
constant: version_field {
  value: "version"
}

## What is the game name field? (for schemas with multiple fields)
constant: game_name_field {
  value: "app_id"
}

## What is the user/player ID field?
constant: user_id_field {
  value: "requester_id"
}

## What is name of the event field (i.e. start_match)?
constant: event_name_field {
  value: "progname"
}

## What is name of the acquisition cost field?
constant: acquisition_cost_field {
  value: "acquisition_cost"
}


## What is name of the ad revenue field?
constant: ad_revenue_field {
  value: "ad_revenue"
}
