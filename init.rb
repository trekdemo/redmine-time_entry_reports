Redmine::Plugin.register :time_entry_alerts do
  name 'Time Entry Alerts plugin'
  author 'Gergo Sulymosi'
  description 'The plugin enables you to setup automatic email reports on time entries.'
  version '0.1.0'
  url 'http://github.com/trekdemo/redmine_time_enty_alerts'
  author_url 'http://github.com/trekdemo'


  settings :default => {
    'timezone' => Rails.application.config.time_zone,
    'daily_required_hours' => 7
  }, :partial => 'settings/time_entry_alert_settings'
end
