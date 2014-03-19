# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class ArchivedEmployeeAdditionalDetail < ActiveRecord::Base
  belongs_to :archived_employee
  belongs_to :additional_field
end
