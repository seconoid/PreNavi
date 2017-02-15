class Room < ApplicationRecord
  self.primary_key = "no"
  has_many :students
end
