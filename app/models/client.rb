class Client < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :students, through: :favorites
  has_secure_password
end
