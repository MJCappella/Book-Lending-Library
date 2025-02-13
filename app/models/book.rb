# This model represents a book in the library with a one-to-many relationship with the Borrowing model.

class Book < ApplicationRecord
  has_many :borrowings, dependent: :destroy
  validates :title, :author, presence: true
end
