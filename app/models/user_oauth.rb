# coding: utf-8

class UserOauth < ActiveRecord::Base

  belongs_to :user

  def value_hash
    @__value_hash ||= JSON.parse(value) rescue {}
  end
end
