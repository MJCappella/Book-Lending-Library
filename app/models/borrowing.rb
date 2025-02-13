class Borrowing < ApplicationRecord
  belongs_to :book
  validates :borrower, presence: true
end
