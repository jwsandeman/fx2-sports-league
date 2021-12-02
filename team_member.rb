class TeamMember
    def initialize(name)
        @name = name
    end

    def to_s
        @name
    end

    def train
        puts "#{@name} is training"
    end
    def play
        puts "#{@name} is playing the game"
    end 
end