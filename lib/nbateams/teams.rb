module Nbateams::Teams
attr_accessor :name, :coach, :players, :championships, :record, :websiteinfo, :teams 

def self.today 
self.scrape_teams 
end 
def self.scrape_teams
teams = []
teams << Nbateams::Scraper.scrape_bulls
teams << Nbateams::Scraper.scrape_knicks 
teams 
end 
def self.all 
  teams 
end 

end 