require "httparty"
require "json"


class PunkApiTest
  include HTTParty
  base_uri 'https://api.punkapi.com/v2'

  def self.all_beers
    self.get('/beers')
  end 

  def self.specific_beer(id)
    self.get("/beers/#{id}")
  end

  def self.random_beer
    self.get("/beers/random")
  end
end