# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

module CoursesHelper

  def setup_course(course)
    returning(course) do |c|
      c.batches.build if c.batches.empty?
    end
  end

end
