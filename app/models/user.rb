class User < ApplicationRecord
  has_secure_password

  has_many :tranzactions, autosave: true
end
