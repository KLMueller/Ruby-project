# frozen_string_literal: true
source  = "https://rubygems.org"
# Specify your gem's dependencies in tv_shows.gemspec
require 'nokogiri'
require 'open-uri'
require 'json'

# Parse payload to hash
class Scraper
    URL = "https://www.scrapethissite.com/pages/ajax-javascript/?ajax=true&year="
    def self.scrape_and_print_shows(year)
        puts "Fetching tv shows..."
    # use URL and the user input which will be year to grab the payload of the response
    # To parse the payload, be sure to use nokogiri to parse this into url. We can use text to receive the json object. Use JSON.parse to do just this by passing in doc.text as an argument
    doc = Nokogiri::HTML(URI.open("#{URL} #{year}"))
    scraped_shows = JSON.parse(doc.text)
    
    # print each show
    scraped_shows.each do |show|
      puts "| #{show["title"]} | #{show["year"]}"
    end
  end
end