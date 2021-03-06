class SubcategoriesController < ApplicationController
  	before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]
	before_action :set_subcategory, only: [:show, :edit, :destroy, :update]

	def index
		@subcategories = Subcategory.all
	end

	def show
		@subcategory_adresses = Adresse.order(title: :asc).where(subcategory_id: @subcategory.id)
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
