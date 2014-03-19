# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class AssessmentScore < ActiveRecord::Base
  belongs_to :student
  belongs_to :descriptive_indicator
  belongs_to :exam

  named_scope :co_scholastic, {:conditions=>{:exam_id=>nil}}
  named_scope :scholastic, {:conditions=>['exam_id > 0']}
#  belongs_to :cce_grade
end
