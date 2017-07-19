class Library < ApplicationRecord
  # Remember to create a migration!

  validates :title, :address, presence: true
  has_many :books
end
