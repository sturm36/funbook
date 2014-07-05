class CitiesController < ApplicationController
  
  layout false

  def index_cities
  	@cities = City.sorted


  end
end
