class CategoriesController < ApplicationController
	
	before_action :set_category, only: [:show, :edit, :destroy, :update]

	def index
  		@categories = Category.all
  	end

  	def new
  	  @category = Category.new
  	end

  	def create
  	   @categorie = Category.new(categories_params)
  	   @categorie.save
  		  redirect_to categories_path
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
  	    params.require(:category).permit(:title, :description, :parent)
  	  end
end
