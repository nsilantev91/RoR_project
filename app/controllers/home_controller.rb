class HomeController < ApplicationController

  before_action :authenticate_user!
  def index

  end

  def auth

  end

  private

  def authenticate_user!
    # code here
  end
end