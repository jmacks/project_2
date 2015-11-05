class User < ActiveRecord::Base

  has_secure_password

  has_many :images
  has_many :captions
  
end