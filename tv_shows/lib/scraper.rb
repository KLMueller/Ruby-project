#require 'nokogiri'
#require 'open-uri'
# Parse payload to hash
#require 'json'
class Scraper
    URL = 'https://developers.themoviedb.org/3/tv/get-popular-tv-shows'
    def self.scrape_and_print_shows(year)
        puts "Fetching tv shows..."
    # use URL and the user input which will be year to grab the payload of the response
    # To parse the payload, be sure to use nokogiri to parse this into url. We can use text to receive the json object. Use JSON.parse to do just this by passing in doc.text as an argument
    doc = Nokogiri::HTML(URI.open("#{URL}#{year}"))
    scraped_shows = JSON.parse(doc.text)

      # print each show
      scraped_shows.each do |show|
        puts "| #{show["title"]} | #{show["year"]} | #{show["nominations"]} | #{show["best_picture"]}"
      end
    end
end