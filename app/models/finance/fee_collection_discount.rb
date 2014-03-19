# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class FeeCollectionDiscount < ActiveRecord::Base

  def category_name
    c =StudentCategory.find(self.receiver_id)
    c.name unless c.nil?
  end

  def student_name
    s =Student.find(self.receiver_id)
    "#{s.first_name} (#{s.admission_no})" unless s.nil?
  end

end
