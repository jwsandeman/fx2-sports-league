require "colorize"

#Teams have players, uniform, coach, staff, name, city, stadium 

class Team
    attr_reader :stadium, :wins, :mood, :stamina

    def initialize(name, city, stadium, uniform, players, coach, staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
        # default values for the attributes
        @wins = 0
        @losses = 0
        @mood = 10
        @stamina = 10
    end
    def to_s
        return "#{@city} #{@name}".colorize(@uniform.to_sym)
    end

    def full_info
        puts "#{@city} #{@name}"
        puts "Stadium: #{@stadium}"
        puts "Coach: #{@coach}"
        puts "Roster: "
        @players.each {|player| puts player}
        puts "Staff members"
        @staff.each {|staff| puts staff}
        puts "The current W-L balance is #{@wins}-#{@losses}"
        puts "The current mood level is #{@mood}"
        puts "The current stamina level is #{@stamina}"
    end

    def print_team_table_view
        puts "#{@name} \t #{@wins} \t #{@losses}"
    end

    def win
        puts "Yay! #{@name} won the game!"
        @wins += 1
        @mood += 3
        @stamina -= 2
    end

    def lose
        puts "Boo! #{@name} lost the game!"
        @losses += 1
        @mood -= 2
        @stamina -= 2
    end

    def train
        @stamina += 2
        @mood += 1
        puts "#{@name} were training and now their stamina level is on #{@stamina} and their mood has increased to #{@mood}"
    end
end
