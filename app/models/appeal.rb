class Appeal < ApplicationRecord
  belongs_to :user

  #validation
  validates :caption, :body, presence: true
end
