class Client < ApplicationRecord
  has_many :favorites
  has_many :students, through: :favorites
  has_secure_password
end
