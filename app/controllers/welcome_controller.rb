class WelcomeController < ApplicationController
  def index
  end
  def home
  	@adresses = Adresse.all
  	@categories = Category.all
	@hash = Gmaps4rails.build_markers(@adresses) do |adresse, marker|
	  marker.lat adresse.latitude
	  marker.lng adresse.longitude
	  marker.infowindow adresse.title
	end
  end
end
