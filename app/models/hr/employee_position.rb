# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class EmployeePosition < ActiveRecord::Base
  validates_presence_of :name, :employee_category_id
  validates_uniqueness_of :name,:scope=>:employee_category_id
  named_scope :active, :conditions => {:status => true }
  belongs_to :employee_category
  has_many :employee
end
