# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class Reminder < ActiveRecord::Base
  validates_presence_of :body
  belongs_to :user , :foreign_key => 'sender'
  belongs_to :to_user, :class_name=>"User",:foreign_key => 'recipient'

  cattr_reader :per_page
  @@per_page = 12
end
