class SubcategoriesController < ApplicationController

	before_action :set_subcategory, only: [:show, :edit, :destroy, :update]

	def index
		@subcategories = Subcategory.all
	end

	def new
		@subcategory = Subcategory.new
	end	

	def create
		@subcategorie = Subcategory.create(subcategories_params)
		redirect_to subcategories_path
	end

  	def destroy
  		@subcategory.destroy
  		redirect_to subcategories_path
  	end

  	def update
  	  if @subcategory.update(subcategories_params)
  	    redirect_to subcategories_path, notice: "subcatégorie updatée"
  	  else
  	    render :edit
  	  end
  	end

	private
	  def set_subcategory
	    @subcategory = Subcategory.find(params[:id])
	  end
	  def subcategories_params
	    params.require(:subcategory).permit(:title, :description, :category_id, :gif)
	  end

end
