# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class EmployeeLeaveType < ActiveRecord::Base
    has_many :employee_leaves
    has_many :employee_attendances

    validates_presence_of :name, :code
    validates_uniqueness_of :name, :code
    validates_numericality_of :max_leave_count, :greater_than => 0
end
