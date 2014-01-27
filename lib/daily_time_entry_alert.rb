require_relative '../app/mailers/time_entry_report_mailer'

class DailyTimeEntryAlert

  def initialize(options = {})
    @required_hours = options['daily_required_hours'].to_f
  end

  def call
    users_to_alert.find_each do |user|
      TimeEntryReportMailer.daily_alert(user).deliver
    end
  end

  private
  attr_reader :required_hours

  def users_to_alert
    User.joins('LEFT OUTER JOIN time_entries ON time_entries.user_id = users.id') \
        .where('time_entries.spent_on' => yesterday) \
        .group('users.id') \
        .having('SUM(time_entries.hours) < ?', required_hours)
  end

  def yesterday
    1.day.ago.to_date
  end

end
