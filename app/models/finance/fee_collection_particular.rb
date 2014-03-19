# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class FeeCollectionParticular < ActiveRecord::Base
  belongs_to :finance_fee_collection
  belongs_to :student_category
  validates_presence_of :name,:amount
  validates_numericality_of :amount
  cattr_reader :per_page
  @@per_page = 10
end
