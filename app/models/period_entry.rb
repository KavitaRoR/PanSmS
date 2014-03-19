# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class PeriodEntry < ActiveRecord::Base
  belongs_to :batch
  belongs_to :class_timing
  belongs_to :subject
  belongs_to :employee
end
