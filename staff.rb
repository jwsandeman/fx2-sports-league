require_relative("./team_member.rb")

class Staff  <TeamMember
    def initialize(name, role)
        super(name)
        @role = role
    end

    def train
        puts "#{@name} is helping in the training as a #{@role}"
    end

    def play
        puts "#{@name} is assisting the team in the game as a #{@role}"
    end

end