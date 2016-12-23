class AdressesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]
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
    @adresse = Adresse.new(adresses_params)
    @adresse.save
 	  redirect_to adresses_path
  end

  def show
    
  end

  def destroy
  	@adresse.destroy
  	redirect_to adresses_path
  end

  def update
    @adresse.usecases.destroy_all
    @adresse.usecases << @usecases
    if @adresse.update(adresses_params)
      redirect_to @adresse, notice: "adresse updatée"
    else
      render :edit
    end
  end

  private
    def adresses_params
      params.require(:adresse).permit(:title, :description, :price, :price_detail, :credit_card, :time_to_go, :category_id, :latitude, :longitude, :subcategory_id, :usecase_ids => [])
    end
    def set_adresse
      @adresse = Adresse.find(params[:id])
      @usecases = @adresse.usecases
      @category = Category.find(@adresse.category_id)
      @subcategory = Subcategory.find(@adresse.subcategory_id)
    end
end

#adresses_path
#edit_adress_path + ID
#new_adress_path
#adress_path  + ID