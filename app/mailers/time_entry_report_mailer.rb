class TimeEntryReportMailer < Mailer

  def daily_alert(user)
    @user = user

    mail(to: @user.mail, subject: 'Your timesheet is gappy')
  end

end
