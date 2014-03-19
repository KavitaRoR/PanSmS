# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng


class BatchFeeCollectionDiscount < FeeCollectionDiscount

  belongs_to :receiver ,:class_name=>'Batch'
  validates_presence_of  :receiver_id , :message => "#{t('batch_cant_be_blank')}"



end
