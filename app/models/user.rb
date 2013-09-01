# coding: utf-8

class User < ActiveRecord::Base

  devise \
      :database_authenticatable,
      :registerable,
      :recoverable,
      :rememberable,
      :trackable,
      :validatable #,
      #:token_authenticatable,
      #:confirmable,
      #:lockable,
      #:timeoutable,
      #:omniauthable

  has_many :user_oauths

end
