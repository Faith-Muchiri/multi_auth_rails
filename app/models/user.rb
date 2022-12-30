class User < ApplicationRecord
  has_secure_password
  self.inheritance_column = "type"
end
