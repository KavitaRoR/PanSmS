# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng


class StudentCategoryFeeCollectionDiscount < FeeCollectionDiscount

  belongs_to :receiver ,:class_name=>'StudentCategory'
  validates_presence_of  :receiver_id , :message => "#{t('student_category_cant_be_blank')}"

  
end
