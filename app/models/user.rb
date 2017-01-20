class User < ApplicationRecord
  has_one :student
  has_one :client
  has_secure_password
end
