class User < ActiveRecord::Base
   has_many :pins
   has_secure_password

   validates :username, presence: true
   validates :password, presence: true
end
