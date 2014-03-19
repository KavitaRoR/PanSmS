# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class DescriptiveIndicator < ActiveRecord::Base
  belongs_to    :describable,:polymorphic=>true
  has_many      :assessment_scores
  validates_presence_of :name
  validates_presence_of :desc

  default_scope :order=>'sort_order ASC'
end
