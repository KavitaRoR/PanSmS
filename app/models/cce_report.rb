# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class CceReport < ActiveRecord::Base

  belongs_to    :batch
  belongs_to    :student
#  has_and_belongs_to_many   :exams
  belongs_to    :observable, :polymorphic=>true
  belongs_to    :exam

  named_scope :scholastic,{:conditions=>{:observable_type=>"FaCriteria"}}
  named_scope :coscholastic,{:conditions=>{:observable_type=>"Observation"}}
end
