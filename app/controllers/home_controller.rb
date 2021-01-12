class HomeController < ApplicationController
  def index
    @positions = Position.all
  end
end
