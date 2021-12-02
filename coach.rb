require_relative("./team_member.rb")

class Coach  <TeamMember
    def initialize(name)
        super(name)
    end

    def train
        puts "#{@name} is leading the training"
    end

    def play
        puts "#{@name} is coaching the team in the game"
    end

end