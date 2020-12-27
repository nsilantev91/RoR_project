class HomeController < ApplicationController

  before_action :authenticate_user!
  def index
    @user = current_user
    @rentals = Rentals.new()
  end

  def add
    @book = Book.new()
  end

  def addBook
    count = params['book']['available_count'].to_i
    year = params['book']['year_of_publish'].to_i
    obj = Book.new(:name => params['book']['name'], :author => params['book']['author'],
                   :available_count => count, :year_of_publish => year)
    obj.save
    redirect_to '/home/admin'
  end
  def profile
    @user = current_user
    @rentals = Rentals.new()
  end

  def admin
    @user = current_user
    @rentals = Rentals.new()
    @book = Book.new()
  end



  def getBook
    when_return = Time.zone.now + 16.days
    obj = params['rentals']['id_book']
    object = Rentals.new(:id_book => obj.to_i, :login => current_user.login, :when_return => when_return)
    object.save
    redirect_to '/'
  end

  def returnBook
    obj = params['rentals']['id_book']
    object = Rentals.find_by(:id_book => obj, :login =>current_user.login)
    object.destroy
    redirect_to '/home/profile'
  end

  helper_method :findRental
  def findRental(id_book)
    Rentals.find_by_id_book(id_book)
  end


  def auth

  end
end