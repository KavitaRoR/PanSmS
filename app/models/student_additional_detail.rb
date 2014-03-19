# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class StudentAdditionalDetail < ActiveRecord::Base
  belongs_to :student
  belongs_to :student_additional_field, :foreign_key=>'additional_field_id'
end
