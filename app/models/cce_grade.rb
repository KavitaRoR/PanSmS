# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class CceGrade < ActiveRecord::Base
#  has_many      :assessment_scores
  belongs_to    :cce_grade_set
  validates_presence_of :name
  validates_presence_of :grade_point
  validates_numericality_of :grade_point
end
