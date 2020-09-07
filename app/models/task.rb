class Task < ApplicationRecord
  belongs_to :project
  belongs_to :programmer
end
