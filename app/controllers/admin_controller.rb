class AdminController < ApplicationController
  def index
    unless User.find_by_id(session[:user_id])
      redirect_to login_url
    end
  end
end
