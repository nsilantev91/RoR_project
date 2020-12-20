class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum status: {:user => 'user', :admin => 'admin'}
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.status ||= :user
  end
  #validates :id_book, presence: true
   validates :login, :full_name,:course, presence: true
  #validates :status, presence: true
  #validates :when_return, presence: true

end
