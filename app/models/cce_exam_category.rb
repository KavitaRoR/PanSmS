# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class CceExamCategory < ActiveRecord::Base
  has_many                :cce_weightages
  has_many :cce_exam_categories_exam_groups
  has_many :exam_groups,  :through => :cce_exam_categories_exam_groups
  has_many                :fa_groups
  validates_presence_of     :name
  validates_presence_of     :desc
end
