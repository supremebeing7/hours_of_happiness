class ReportMailer < ActionMailer::Base
  default from: "us@hoursofhappiness.com"

  def admin_report(report)
    @report = report
    mail to: "admin@hoursofhappiness.com", subject: "Content Report Submitted"
  end
  def user_report(report)
    @report = report
    mail to: @report.user.email, subject: "Content Report Submitted"
  end
end
