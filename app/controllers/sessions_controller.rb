

class SessionsController < ApplicationController
  # before_action :redirect_if_not_logged_in
  # skip_before_action :redirect_if_not_logged_in, only: [:new] 


  def new
    redirect_to '/user' if current_user
  end

  def create
    if !params[:name].blank?
      session[:name] = params[:name]
      redirect_to '/user'
    else
      redirect_to '/'
    end  
  end  


  def destroy
    session.clear if current_user
  end  

  
end 