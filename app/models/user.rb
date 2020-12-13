class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :id_book, presence: true
  validates :course, presence: true
  validates :full_name, presence: true
  validates :status, presence: true
  validates :login, presence: true
  validates :when_return, presence: true

end
