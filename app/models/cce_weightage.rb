# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class CceWeightage < ActiveRecord::Base
  has_and_belongs_to_many :courses
  belongs_to              :cce_exam_category
  validates_presence_of :weightage,:criteria_type
  def validate
    errors.add_to_base("CCE Exam category can't be blank") if self.cce_exam_category_id.blank?
  end
end
