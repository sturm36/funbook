class StatesController < ApplicationController
  
layout false

  def index_states
  	@states = State.sorted

  end

  def cities
  	redirect_to(:controller => 'cities',:action => 'index_cities')
  end
end
