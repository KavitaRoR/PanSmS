# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class UserEvent < ActiveRecord::Base
  belongs_to :user
  belongs_to :event

  validates_uniqueness_of :user_id,:scope =>:event_id
end