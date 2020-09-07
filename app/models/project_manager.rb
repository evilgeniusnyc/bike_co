class ProjectManager < ApplicationRecord
  belongs_to :department
  has_many :projects 
end
