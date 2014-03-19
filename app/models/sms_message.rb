# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class SmsMessage < ActiveRecord::Base
  has_many :sms_logs

  def self.get_sms_messages(page = 1)
    SmsMessage.paginate(:order=>"id DESC", :page => page, :per_page => 30)
  end

  def get_sms_logs(page = 1)
    self.sms_logs.paginate( :order=>"id DESC", :page => page, :per_page => 30)
  end
end
