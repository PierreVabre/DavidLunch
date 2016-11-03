class WelcomeController < ApplicationController
  def index
  end
  def home
  	@adresses = Adresse.all
  	@categories = Category.all
  end
end
