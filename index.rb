require "faker"

require_relative("./team.rb")
require_relative("./league.rb")
require_relative("./team_member.rb")
require_relative("./player.rb")
require_relative("./coach.rb")
require_relative("./staff.rb")
#create an array of players and add it to the team x3
#Create a coach object and add it to the team x3
#Create an array of members and add it to the team x3
team1_players = []
team2_players = []
team3_players = []
for i in 1..8
    team1_players.push(Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position))
    team2_players << Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position)
    team3_players << Player.new(Faker::Sports::Basketball.player, i , Faker::Sports::Basketball.position)
end
team1_staff = []
team2_staff = []
team3_staff = []
for i in 1..3
    team1_staff << Staff.new(Faker::Name.name, Faker::Job.position )
    team2_staff << Staff.new(Faker::Name.name, Faker::Job.position )
    team3_staff << Staff.new(Faker::Name.name, Faker::Job.position )
end


coach1 = Coach.new(Faker::Sports::Basketball.coach)
coach2 = Coach.new(Faker::Sports::Basketball.coach)
coach3 = Coach.new(Faker::Sports::Basketball.coach)
puts coach1
puts coach2
puts coach3

team1 = Team.new("Lions", "Brisbane", "The Gabba", "Maroon, blue and yellow", team1_players, coach1, team1_staff)
team2 = Team.new("Broncos", "Brisbane", "The Gabba", "Maroon", team2_players, coach2, team2_staff)
team3 = Team.new("Bullets", "Brisbane", "The Gabba", "Blue", team3_players, coach3, team3_staff)
team1.full_info

array_teams = [team1, team2, team3]
league = League.new("BML", "multisport", "Brisbane Multisports league", array_teams )

#puts league
#puts league.print_teams

