class Student < ApplicationRecord
  belongs_to :user
  has_one :product
  has_many :favorites
  has_many :clients, through: :favorites
  has_many :reviews
  has_many :clients, through: :reviews
  acts_as_taggable_on :skills, :personalities
end
