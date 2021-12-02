class League

    def initialize (name, sport, description, teams)
        @name = name
        @sport = sport
        @description = description
        @teams = teams
    end

    def to_s
        return "#{@name}: #{@description}"
    end

    def print_teams
        @teams.each do |team|
            team
        end
    end
end

