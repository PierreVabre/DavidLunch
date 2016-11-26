class AdressesController < ApplicationController

  before_action :set_adresse, only: [:show, :edit, :destroy, :update]


  def index
  	@adresses = Adresse.all
    @categories = Category.all
    @subcategories = Subcategory.all
  end

  def new
    @adresse = Adresse.new
  end

  def create
    @adresse = Adresse.create(adresse_params)
    if @adresse.save
 	    redirect_to adress_path @adresse
    else
      render :new
    end
  end

  def show
    
  end

  def destroy
  	@adresse.destroy
  	redirect_to adresses_path
  end

  def update
    if @adresse.update(adresse_params)
      redirect_to @adresse, notice: "adresse updatée"
    else
      render :edit
    end
  end

  private
    def adresse_params
      params.require(:adresse).permit(:title, :description, :price, :credit_card, :time_to_go, :category_id, :latitude, :longitude, :subcategory_id)
    end
    def set_adresse
      @adresse = Adresse.find(params[:id])
      @category = Category.find(@adresse.category_id)
      @subcategory = Subcategory.find(@adresse.subcategory_id)
    end
end

#adresses_path
#edit_adress_path + ID
#new_adress_path
#adress_path  + ID