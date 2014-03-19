# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class BatchStudent < ActiveRecord::Base
  belongs_to :batch
  belongs_to :student
  belongs_to :school
  validates_presence_of :student_id,:batch_id
end
