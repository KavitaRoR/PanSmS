# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class StudentsSubject < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject

  def student_assigned(student,subject)
    StudentsSubject.find_by_student_id_and_subject_id(student,subject)
  end
end
