# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class FeeDiscount < ActiveRecord::Base

  belongs_to :finance_fee_category
  validates_presence_of :name, :discount, :type
  validates_numericality_of :discount,:less_than_or_equal_to=> 100,:greater_than_or_equal_to=> 1

  def category_name
    c =StudentCategory.find(self.receiver_id)
    c.name unless c.nil?
  end

  def student_name
    s =Student.find(self.receiver_id)
    "#{s.first_name} (#{s.admission_no})" unless s.nil?
  end

end
