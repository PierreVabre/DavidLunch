class WelcomegifsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]  
  before_action :set_welcomegif, only: [:show, :edit, :destroy, :update]

  def index
      @welcomegifs = Welcomegif.all
    end
    
    def new
      @welcomegif = Welcomegif.new
    end

    def create
       @welcomegif = Welcomegif.new(welcomegifs_params)
       @welcomegif.save
       redirect_to welcomegifs_path
    end

    def show
    end

    def update
      if @welcomegif.update(welcomegifs_params)
        redirect_to @welcomegif, notice: "welcomegif updaté"
      else
        render :edit
      end
    end

    def destroy
      @welcomegif.destroy
      redirect_to welcomegifs_path
    end

    private
      def set_welcomegif
        @welcomegif = Welcomegif.find(params[:id])
      end
      def welcomegifs_params
        params.require(:welcomegif).permit(:title, :gif)
      end
end
