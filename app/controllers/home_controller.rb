class HomeController < ApplicationController

  before_action :authenticate_user!
  def index
    @user = current_user
  end

  helper_method :get_book
  def get_book(id)
    when_return = Time.zone.now
    object = Rentals.new(:login => @user.login,:id_book => id)
    object.save

  end


  def auth

  end
end