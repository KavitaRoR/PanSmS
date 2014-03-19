# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class EmployeeCategory < ActiveRecord::Base
  validates_presence_of :name, :prefix
  validates_uniqueness_of :name, :prefix
  named_scope :active, :conditions => {:status => true }
  has_many :employee_positions
  has_many :employees
end
