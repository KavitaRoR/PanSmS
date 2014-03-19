# Developed By Munsoft IT Solutions
# Developers: ABUBAKAR UMAR PANTAMI, MUSA AHMADU, ALIYU NASIR, USMAN IBN MUHAMMAD
# Website: http:///wwww.munsoft.com.ng
# Email: info@munsoft.com.ng

class ObservationsController < ApplicationController
  before_filter :login_required
  filter_access_to :all
  def show
    @observation=Observation.find params[:id]
    @descriptives=@observation.descriptive_indicators
  end

end
