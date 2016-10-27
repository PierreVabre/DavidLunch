class AdressesController < ApplicationController
  def index
  	@adresses = Adresse.all
  end
end
