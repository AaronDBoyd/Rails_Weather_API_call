class WeatherController < ApplicationController

  def index
    @zip = params[:zip]

    if @zip
    weather_object = Weather.new(@zip)
    
    # weather_object = Weather.new('98116')
    @description = weather_object.get_description()
    # binding.pry
    render :results
    end
    # binding.pry
    
    # render :index

    # render :results
  end

end