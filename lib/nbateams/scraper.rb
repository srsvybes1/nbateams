class Nbateams::Scraper 
  include Nbateams::Teams 
  
  def self.scrape_bulls 
  doc = Nokogiri::HTML(open("https://www.landofbasketball.com/teams/chicago_bulls.htm"))
  teams = self.new
  teams.name = doc.search("div p")[3].text
  teams.coach = doc.search("td p")[4].text
  teams.websiteinfo = doc.search("div p")[2].text 
  teams.record = doc.search("div p")[6].text 
  teams.championships = doc.search("div p")[7].text 
  teams 
end 
def self.scrape_knicks
  doc = Nokogiri::HTML(open("https://www.landofbasketball.com/teams/new_york_knicks.htm"))
  teams = self.new
  teams.name = doc.search("div p")[3].text
  teams.coach = doc.search("td p")[3].text 
  teams.websiteinfo =doc.search("div p")[2].text 
  teams.record = doc.search("div p")[6].text 
  teams.championships = doc.search("div p")[7].text
  teams 
end 
  
  
end 