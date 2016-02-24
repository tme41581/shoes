class User < ActiveRecord::Base
  has_secure_password
  has_many :shoes
  has_many :sales
  has_many :shoesales

end
