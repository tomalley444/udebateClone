
class SessionsController < ApplicationController
  def new
  end
  
  def create
    
    user = User.find_by_email(params[:session][:email].downcase)

  
    if user && user.authenticate(params[:session][:password]) 
      
      log_in(user)
   
      puts logged_in?
      redirect_to current_user
     
    else
      
    flash.now[:danger] = "invalid login information"
    render('new')
   
    end
  end
  
  def destroy
    log_out
    redirect_to root_path
  end
end
