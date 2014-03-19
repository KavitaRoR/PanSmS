# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class PayrollCategory < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_presence_of   :name

  has_many :monthly_paslips

end
