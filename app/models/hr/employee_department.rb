# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class EmployeeDepartment < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name, :code
  has_many :employees
  has_many  :employee_department_events
  has_many  :events,  :through=>:employee_department_events
  named_scope :active, :conditions => {:status => true }


  def department_total_salary(start_date,end_date)
    total = 0
    self.employees.each do |e|
      salary_dates = e.all_salaries(start_date,end_date)
      salary_dates.each do |s|
        total += e.employee_salary(s.salary_date.to_date)
      end
    end
    total
  end

end