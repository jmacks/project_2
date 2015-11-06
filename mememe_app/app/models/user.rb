class User < ActiveRecord::Base

  validates :username, presence: true,
                       length: { minimum: 3 }
  validates :password, presence: true
  

  has_secure_password

  has_many :images
  has_many :captions

end
