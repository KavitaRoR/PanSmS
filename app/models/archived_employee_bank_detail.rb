# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class ArchivedEmployeeBankDetail < ActiveRecord::Base
  belongs_to :archived_employee
  belongs_to :bank_field
end
