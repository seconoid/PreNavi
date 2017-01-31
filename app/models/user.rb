class User < ApplicationRecord
  has_one :student
  accepts_nested_attributes_for :student
  has_one :client
  accepts_nested_attributes_for :client
  mount_uploader :image, ImageUploader
end
