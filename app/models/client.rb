class Client < ApplicationRecord
  belongs_to :user
  has_many :favorites
  has_many :students, through: :favorites
  acts_as_taggable_on :skills, :systems, :personalities
end
