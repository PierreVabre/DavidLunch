class AdressesController < ApplicationController
  def index
  	@adresses = Adresse.all
  end

  def create
 	@adresse = Adresse.create title: params[:title]
 	redirect_to adress_path @adresse
  end

  def show
  	@adresse = Adresse.find(params[:id])
  end
end

#adresses_path
#edit_adress_path + ID
#new_adress_path
#adress_path  + ID