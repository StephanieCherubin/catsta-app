class HomeController < ApplicationController
  def index
    @cats = Cat.get_cats
  end
end
