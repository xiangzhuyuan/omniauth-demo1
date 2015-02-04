class SessionsController < ApplicationController
  def callback
    #raise request.env["omniauth.auth"].to_yaml
    #omniauth.auth
    auth = request.env["omniauth.auth"]

    #User
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"])

    if user
      # if already existed
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logined!!!"
    else
      # new user
      User.create_with_omniauth(auth)
      redirect_to root_url, :notice => "#{auth["info"]["name"]}, #{auth["provider"]} 。"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Log out"

  end
end
