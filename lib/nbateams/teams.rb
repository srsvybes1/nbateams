class Nbateams::Teams
attr_accessor :name, :coach, :players, :championships, :record 

def self.today 
self.scrape_teams 
end 
def self.scrape_teams
  
teams = []
teams << self.scrape_bulls
teams << self.scrape_knicks 
#team_1 = self.new 
#team_1.name = "name"
#team_1.coach = "coach"
#team_1.players = "players"
#team_1.championships = "rings"
#team_1.url = "url"


#team_2 = self.new 
#team_2.name = "name"
#team_2.coach = "coach"
#team_2.players = "players"
#team_2.championships = "rings"
#team_2.url = "url"

#[team_1, team_2]
#teams 
end 
def self.scrape_bulls 
  doc = Nokogiri::HTML(open("https://www.landofbasketball.com/teams/chicago_bulls.htm"))
  teams = self.new
  teams.name = doc.search("div p")[3].text
  teams.coach = doc.search("td p")[4].text
  teams.websiteinfo = doc.search("div p")[2].text 
  teams.record = doc.search("div p")[6].text 
  teams.championships = doc.search("div p")[7].text 
  teams 
  #binding.pry
end 
def self.scrape_knicks
  doc = Nokogiri::HTML(open("https://www.landofbasketball.com/teams/new_york_knicks.htm"))
  teams.name = doc.search("div p")[3].text
  teams.coach = doc.search("td p")[3].text 
  teams.websiteinfo =doc.search("div p")[2].text 
  teams.record = doc.search("div p")[6].text 
  teams.championships = doc.search("div p")[7].text
  teams 
  #binding.pry 
end 
end 