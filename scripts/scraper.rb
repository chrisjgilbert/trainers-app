require 'nokogiri'
require 'open-uri'
require 'pry'
require 'sinatra/activerecord'

module Scraper

  class Asos
    URL = "https://www.asos.com/women/sale/a-to-z-of-brands/nike/cat/?cid=10761"
    def self.get_page_data(url = URL)
      scraped_page = Nokogiri::HTML(open(url))
      self.save_to_db(scraped_page)
    end

    def self.save_to_db(scraped_page)
      scraped_page.css('article').each do |trainer|
        name =  trainer.css('a div div div p').text
        price = trainer.css('a p span span').text
        Trainer.where(name: name).first_or_create!(
          name: name,
          price: price
        )
      end
    end
  end


end



