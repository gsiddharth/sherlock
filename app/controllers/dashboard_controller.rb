class DashboardController < ApplicationController
  
  #before_action :authenticate_user!
  before_action :set_current_tab, :app_init
    
  def index
     @current_user=current_user     
  end
  
  def set_current_tab
    @current_tab="dashboard"    
  end
  
end
