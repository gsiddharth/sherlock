class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def app_init
    rightmenu
  end 
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
    
  #TODO remove active subject from session
  def rightmenu
    exam=current_user.active_exam
    if(session[:active_subject]==nil)
      @right_menu=[exam,exam.subjects,0]
    else
      @right_menu=[exam,exam.subjects,session[:active_subject]]
    end
  end  
  
  helper_method :current_user
  helper_method :right_menu
  
end

