class Student < ApplicationRecord
  belongs_to :user
  has_one :product
  has_many :favorites
  has_many :clients, through: :favorites
  acts_as_taggable_on :skills, :personalities
end
