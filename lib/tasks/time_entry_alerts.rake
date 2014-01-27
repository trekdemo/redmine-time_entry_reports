namespace :time_entry_alerts do

  desc 'Send an email alert to every user that is under the daily required hours'
  task :daily_alert => :environment do
    DailyTimeEntryAlert.new(Setting.plugin_time_entry_alerts).call
  end

  task :weekly_alert => :environment do
  end
end
