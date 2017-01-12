class Student < ApplicationRecord
  has_one :product
  has_many :favorites
  has_many :clients, through: :favorites
  mount_uploader :image, ImageUploader
  has_secure_password
end
