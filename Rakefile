require 'sinatra/activerecord'
require 'sinatra/activerecord/rake'
require './app'
require_relative './scripts/scraper'

task :scrape_asos do
  Scraper::Asos.get_page_data
end
