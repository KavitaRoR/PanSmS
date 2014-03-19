# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng



class CceSettingsController < ApplicationController
  before_filter :login_required
  filter_access_to :all
  def index
  end

  def basic
  end

  def scholastic
  end

  def co_scholastic
  end

end
