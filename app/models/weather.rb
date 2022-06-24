class Weather

  def initialize(zip)
    @zip = zip
  end

  def get_description
    response = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?zip=' + @zip + '&appid=b1be3f4cf57694eaa9d5a0e857c761fa')
    description = JSON.parse(response.body)["weather"][0]["description"]
    description
  end
end