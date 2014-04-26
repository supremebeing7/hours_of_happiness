class Report < ActiveRecord::Base
  validates :place_id, :description, presence: true
  belongs_to :place
  belongs_to :user
  after_create :send_report_email

  def send_report_email
    ReportMailer.deliver_admin_report(self)
    ReportMailer.deliver_user_report(self)
  end
end
