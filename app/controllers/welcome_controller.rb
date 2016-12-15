class WelcomeController < ApplicationController
  def index
  end
  def home
  	@adresses = Adresse.all
  	@last_adresses = Adresse.order(id: :asc).last(4)
    @random_adresses = Adresse.order("RANDOM()").limit(4)
    @categories = Category.all
  	@subcategories = Subcategory.all
    
    @randomsubcategory = Subcategory.order("RANDOM()").first

    @hash = Gmaps4rails.build_markers(@last_adresses) do |adresse, marker|
	  marker.lat adresse.latitude
	  marker.lng adresse.longitude
	  marker.infowindow adresse.title

	end
  end
end
