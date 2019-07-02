class SessionsController < ApplicationController
  def logining   
    if
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:matkhau])
      render 'static_pages/home'
      log_in user
    else
      # Create an error message.
      render 'login'
    end
    render 'login'
  end
end

  def login
  end  

  def logout
    log_out
    redirect_to root_url
  end
    
end
