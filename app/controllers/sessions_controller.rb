class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      #set the session key called 'user_id' to the id of the user object (user.id)
      #this will store the database id of the user in the client browser
      ##### ENTER CODE HERE######

      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end

  end

  def destroy
    #set the session key "user_id" to nil
    ##### ENTER CODE HERE######
  end
end
