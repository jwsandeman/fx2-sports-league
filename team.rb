#Teams have players, uniform, coach, staff, name, city, stadium 

class Team

    def initialize(name, city, stadium, uniform, players, coach, staff)
        @name = name
        @city = city
        @stadium = stadium
        @uniform = uniform
        @players = players
        @coach = coach
        @staff = staff
    end
    def to_s
        return "#{@city} #{@name}"
    end

    def full_info
        puts "#{@city} #{@name}"
        puts "Stadium: #{@stadium}"
        puts "Coach: #{@coach}"
        puts "Roster: "
        @players.each {|player| puts player}
        puts "Staff members"
        @staff.each {|staff| puts staff}
    end

end
