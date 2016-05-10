class Tranzaction < ApplicationRecord
  belongs_to :user
  validates :amount, numericality: { only_integer: true }
end
