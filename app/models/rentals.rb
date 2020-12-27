class Rentals < ApplicationRecord
  validates :id_book, :login, :when_return, presence: true
end