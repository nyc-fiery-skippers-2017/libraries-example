class Book < ApplicationRecord
  # Remember to create a migration!
  validates :title, :author, presence:  true
  belongs_to :library
  # validate :custom
  #
  #
  # def custom
  #   if self title && self.title.length == 0
  #     errors.add("title", "can not be blank")
  #   end
  # end
end
