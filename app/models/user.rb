class User < ApplicationRecord
  #relation
  has_one :student, dependent: :destroy
  accepts_nested_attributes_for :student
  has_one :client, dependent: :destroy
  accepts_nested_attributes_for :client
  has_many :appeals, dependent: :destroy
  accepts_nested_attributes_for :appeals
  has_many :students, through: :reviews

  #validation
  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
  mount_uploader :image, ImageUploader
end
