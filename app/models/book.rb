#
class Book < ApplicationRecord
  validates :name, :available_count, :author, :year_of_publish, presence: true
end