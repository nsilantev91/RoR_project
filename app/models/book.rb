#
class Book < ApplicationRecord
  validates :id_book, presence: true
  validates :name, presence: true
  validates :available_count, presence: true
  validates :author, presence: true
  validates :year_of_publish, presence: true
end