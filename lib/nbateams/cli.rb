class Nbateams::CLI 
  #attr_accessor :input 
    def call 
    list_teams
    menu
    exitcli 
  end

  def list_teams
    puts "Your NBA Teams"
    @teams = Nbateams::Teams.today
    @teams.each.with_index(1) do |teams, i|
      puts " #{i}. #{teams.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter Your Team"
      input = gets.strip.downcase 

      if input.to_i > 0 
       teams_input = @teams[input.to_i-1]
        puts "#{teams_input.name} - #{teams_input.coach} - #{teams_input.championships} - #{teams_input.record}"
      elsif input == "list"
        list_teams
      else
        puts "Error, type list or exit."
      end
    end 
  end

  def exitcli
    puts "See you on the Court!"
  end
end 