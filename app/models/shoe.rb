class Shoe < ActiveRecord::Base
  belongs_to :user
  has_many :sales
  has_many :shoesales
end
