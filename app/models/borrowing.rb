# This is a simple model that represents a book being borrowed by a borrower.

class Borrowing < ApplicationRecord
  belongs_to :book
  validates :borrower, presence: true
end
