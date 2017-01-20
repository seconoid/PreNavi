class User < ApplicationRecord
  has_one :student
  has_one :client
end
