# Time Entry Alerts - a Redmine plugin

The plugin enables you to setup automatic email reports on time entries.

You can configure the daily threshold of hours, and if somebody is under this,
a mail will be sent to him/her.


## Installation

1. Copy the plugin into the `plugins` directory, and restart the application.
2. Configurure cron to run the rake tasks.

        0 9 * * 2-5 cd <current_app_dir> && bundle exec rake time_entry_alerts:daily_alert
        # 0 9 * * 1 cd <current_app_dir> && bundle exec rake time_entry_alerts:weekly_alert

## Configuration

In Redmine, you can configure the *required daily hours* on the plugins
configuration page.


## Rake tasks

**`rake time_entry_alerts:daily_alert`**

Send an email alert to every user that is under the daily required hours


## TODO

* Weekly alerts on missing timesheets
* Ability to disable alerts
* Reports for admins
* Alerts for admins

