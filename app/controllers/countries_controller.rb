class CountriesController < ApplicationController
  
  layout false

  def index
    @countries = Country.sorted
  end

  def show
    

  end

  def new
    @countries =Country.new
  end

  def create

    @countries = Country.new(country_params)

    if @countries.save
      redirect_to(:action => 'index')
    else
      render('new')
    end
  end

  def edit
  end

  def delete
  end

  def states
    redirect_to(:controller => 'states',:action => 'index_states')
  end

  def country_params
    params.require(:country).permit(:position,:name,:id,:population,:wikilink,:area,:currency,:timezone,:literacy)
  end

end


