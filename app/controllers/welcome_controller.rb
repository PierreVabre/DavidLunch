class WelcomeController < ApplicationController
  
  before_action :authenticate_user!, only: [:edit, :new, :destroy, :update]
  def index
  end
  def home
  	@adresses = Adresse.all
  	@last_adresses = Adresse.order(id: :asc).last(4)
    @random_adresses = Adresse.order("RANDOM()").first
    @categories = Category.all
  	@subcategories = Subcategory.all
    @usecases = Usecase.all
    @randomgif = Welcomegif.order("RANDOM()").first

    @hash = Gmaps4rails.build_markers(@last_adresses) do |adresse, marker|
	  marker.lat adresse.latitude
	  marker.lng adresse.longitude
	  marker.infowindow adresse.title

	end
  end
end
