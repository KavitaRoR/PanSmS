# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng.


class StudentFeeCollectionDiscount < FeeCollectionDiscount
   belongs_to :receiver ,:class_name=>'Student'

  validates_presence_of  :receiver_id , :message => "#{t('student_admission_no_cant_be_blank')}"

  

  def student_name
    s =Student.find(self.receiver_id)
    "#{s.first_name} (#{s.admission_no})" unless s.nil?
  end
  
end
