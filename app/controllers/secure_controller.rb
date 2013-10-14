class SecureController < ApplicationController
  before_action :logged_in

  def index

  end

  private

  def logged_in
    redirect_to "/" unless session[:logged_in].present? && session[:logged_in]
  end
end
