class Shoesale < ActiveRecord::Base
  belongs_to :shoe
  belongs_to :user
end
