class Client < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :students, through: :favorites
  has_many :reviews
  has_many :students, through: :reviews
  acts_as_taggable_on :skills, :systems, :personalities
end
