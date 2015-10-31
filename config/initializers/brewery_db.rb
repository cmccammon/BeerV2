Brewery = BreweryDB::Client.new do |config|
  config.api_key = ENV["beerdb_api_key"]
end
