class Client < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :students, through: :favorites
end
