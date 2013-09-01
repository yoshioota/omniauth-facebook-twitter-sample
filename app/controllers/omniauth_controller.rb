# coding: utf-8

class OmniauthController < ApplicationController

  def callback

    ua, user = OmniauthConcern.handle_omniauth_callback(current_user, request.env["omniauth.auth"])
    # session[:user_id] = user.id
    sign_in user
    redirect_to root_url, :notice => 'login'
  end

  def failure
  end
end
