class SessionController < ApplicationController
  def create
    user = User.find_for_oauth(request.env["omniauth.auth"], current_user)
    session[:user_id] = user.id
    redirect_to index_dashboard_path
  end  

  def destroy
    session[:user_id]=nil
    redirect_to root_url    
  end
end
