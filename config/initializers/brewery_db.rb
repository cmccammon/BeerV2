Brewery = BreweryDB::Client.new do |config|
  config.api_key = ENV["beerdb_api_key"]
  config.logger = Rails.logger
end
