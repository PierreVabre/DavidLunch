class UsecasesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]
	before_action :set_usecase, only: [:show, :edit, :destroy, :update]

	def index
  		@usecases = Usecase.all
  	end
  	
  	def new
  	  @usecase = Usecase.new
  	end

  	def create
  	   @usecase = Usecase.new(usecases_params)
  	   @usecase.save
  		 redirect_to usecases_path
  	end

  	def show
  	end

  	def update
      if @usecase.update(usecases_params)
        redirect_to @usecase, notice: "usecase updatée"
      else
        render :edit
      end
    end

  	def destroy
  		@usecase.destroy
  		redirect_to usecases_path
  	end

  	private
  	  def set_usecase
  	    @usecase = Usecase.find(params[:id])
  	  end
  	  def usecases_params
  	    params.require(:usecase).permit(:title, :gif)
  	  end
end
