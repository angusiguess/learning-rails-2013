class LoginController < ApplicationController
  def log_in
    user_name = params[:user_name].presence || ""
    login = params[:login].presence || {}
    password = login[:password].presence || ""

    @user = User.find_by_user_name user_name
    if @user.nil?
      flash.alert = "User not found, are you sure the user name is correct?"
      redirect_to :back
    elsif @user.password != password
      flash.alert = "Wrong password, is your caps-lock key caps-locked?"
      redirect_to :back
    else
      session[:logged_in] = true
      redirect_to "/secure"
    end
  end

  def log_out
    session.delete(:logged_in)
    redirect_to "/"
  end
end
