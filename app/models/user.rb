class User < ApplicationRecord
  has_secure_password
  self.inheritance_column = "role"
  validates :name, :password, presence: true
end
