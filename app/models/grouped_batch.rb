# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng
class GroupedBatch < ActiveRecord::Base
  belongs_to :batch_group
  belongs_to :batch

  validates_presence_of :batch_group_id, :batch_id
end
