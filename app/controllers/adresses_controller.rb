class AdressesController < ApplicationController

  before_action :set_adresse, only: [:show, :edit, :destroy, :update]

  def index
  	@adresses = Adresse.all
  end

  def create
 	redirect_to adress_path @adresse
  end

  def show
  end

  def destroy
  	@adresse.destroy
  	redirect_to adresses_path
  end

  def edit
  end

  private
    def set_adresse
      @adresse = Adresse.find(params[:id])
    end
end

#adresses_path
#edit_adress_path + ID
#new_adress_path
#adress_path  + ID