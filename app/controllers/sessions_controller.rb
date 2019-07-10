class SessionsController < ApplicationController
 
  def logining   
    if
      user = User.where(:email => params[:session][:email]).first
      if user && user.authenticate(params[:session][:password])
        log_in user
        render 'static_pages/home'
      else
        flash[:danger] = 'Mat khau khong dung'
        render 'login'
      end
    else
        flash[:danger] = 'Dia chi email khong dung '
        render 'login'
    end
  end
  def admin

  end

  def login
  end  

  def logout
    log_out
    redirect_to root_url
  end
    
end
