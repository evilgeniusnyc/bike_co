class Project < ApplicationRecord
  belongs_to :project_manager
  has_many :tasks 
  has_many :programmers, through: :tasks  
end
