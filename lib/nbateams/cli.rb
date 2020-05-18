class Nbateams::CLI 
  
    list_teams
    menu
    cliexit 
  end

  def list_teams
    puts "Your NBA Teams"
    @teams = Nbateams::Teams.today
    @teams.each.with_index(1) do |teams|
      puts "#{teams.name} - #{teams.coach} - #{teams.salarycap}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter Your Team"
      input = gets.strip.downcase

      if input = "Bulls"
        the_team = @teams[input]
        puts "#{the_team.name} - #{the_team.coach} - #{the_team.salarycap}"
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

  
end 