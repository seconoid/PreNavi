class Favorite < ApplicationRecord
  belongs_to :student
  belongs_to :client
end
