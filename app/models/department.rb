class Department < ApplicationRecord
  belongs_to :user_bike
  has_many :product_managers 
end
