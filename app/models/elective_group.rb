# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class ElectiveGroup < ActiveRecord::Base
  belongs_to :batch
  has_many :subjects

  validates_presence_of :name,:batch_id

  named_scope :for_batch, lambda { |b| { :conditions => { :batch_id => b, :is_deleted => false } } }

  def inactivate
    update_attribute(:is_deleted, true)
  end
end
