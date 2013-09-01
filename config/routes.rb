# coding: utf-8

OmniauthFacebookTwitterSample::Application.routes.draw do

  get '/auth/:provider/callback', to: 'omniauth#callback'
  get '/auth/failure', to: 'omniauth#failure'

  devise_for :users

  root 'welcome#index'

end
