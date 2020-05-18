class Nbateams::Teams
attr_accessor :name, :url, :coach, :players, :championships 

def self.today 
self.scrape_teams 
end 
def self.scrape_teams
  
teams = []
teams << self.scrape_bulls
#teams << self.scrape_knicks 
team_1 = self.new 
team_1.name = "name"
team_1.coach = "coach"
team_1.players = "players"
team_1.championships = "rings"
team_1.url = "url"


team_2 = self.new 
team_2.name = "name"
team_2.coach = "coach"
team_2.players = "players"
team_2.championships = "rings"
team_2.url = "url"

[team_1, team_2]
teams 
end 
def self.scrape_bulls 
  doc = Nokogiri::HTML(open("https://www.landofbasketball.com/teams/chicago_bulls.htm"))
  name = doc.search("h1.tc-1").text
  coach = 
  binding.pry
end 
end 