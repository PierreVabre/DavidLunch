class CategoriesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]	
	before_action :set_category, only: [:show, :edit, :destroy, :update]

	  def index
  		@categories = Category.all
      @adresses = Adresse.all
  	end

  	def new
  	  @category = Category.new
  	end

  	def create
  	   @categorie = Category.new(categories_params)
  	   @categorie.save
  		 redirect_to categories_path
  	end

    def show

      @category_adresses = Adresse.order(id: :desc).where(category_id: @category.id)
      @tri =  params[:tri]

      if @tri == "id"
         @category_adresses = Adresse.order(id: :desc).where(category_id: @category.id)
      end
      if @tri == "distance"
        @category_adresses = Adresse.order(distance: :desc).where(category_id: @category.id)
      end
      if @tri == "price"
        @category_adresses = Adresse.order(price: :asc).where(category_id: @category.id)
      end
      if @tri == "title"
        @category_adresses = Adresse.order(title: :asc).where(category_id: @category.id)
      end

      @category_subcategories = Subcategory.order(title: :asc).where(category_id: @category.id)
    end

    def update
      if @category.update(categories_params)
        redirect_to @category, notice: "catégorie updatée"
      else
        render :edit
      end
    end

  	def destroy
  		@category.destroy
  		redirect_to categories_path
  	end

  	private
  	  def set_category
  	    @category = Category.find(params[:id])
  	  end
  	  def categories_params
  	    params.require(:category).permit(:title, :description, :parent, :gif)
  	  end
end
