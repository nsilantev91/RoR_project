class HomeController < ApplicationController

  before_action :authenticate_user!
  def index
    @user = current_user
  end

  def get_book(id)
    when_return = Time.zone.now
    Rentals.create!(:login => @user.login,:id_book => id)

  end


  def auth

  end
end