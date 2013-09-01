# coding: utf-8

Rails.application.config.middleware.use OmniAuth::Builder do

  # provider :developer if Rails.env.in?(%w|development test|)

  provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  provider :twitter,  ENV['TWITTER_KEY'],  ENV['TWITTER_SECRET']
  provider :github,   ENV['GITHUB_KEY'],   ENV['GITHUB_SECRET'], scope: 'user:email'
end
