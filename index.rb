require "tty-prompt"

require_relative("./seed.rb")

# definition of global variables - dollar sign needs to be used everywhere a global variable is being used
$league = seed
$prompt = TTY::Prompt.new

# this method shows a menu and returns selected option
def select_option
    answer = $prompt.select("What's your option?", ["Ladder", "Team Info", "Play game", "Train", "Exit" ])
    return answer
end

# mthis method shows a list of teams and returns selected option
def select_team
    team = $prompt.select("Select your team", $league.print_teams)
    return team
end

def select_game_mode
    mode = $prompt.select("What game mode do you want to play?", ["Manual", "Simulated"])
    return mode
end

def play_game(home, away, mode)
    puts "Game between #{home} and #{away} at #{home.stadium}"
    if mode == "Manual"
        score_home = $prompt.ask("#{home} score:", convert: :integer)
        score_away = $prompt.ask("#{away} score:", convert: :integer)
        
    else
        score_home = rand(60..100) + home.stamina + home.mood + 5
        score_away = rand(60..100) + home.stamina + home.mood
        puts "simulating..."
        sleep(5)
    end
    puts "#{home}(#{score_home})-#{away}(#{score_away})"
    if score_home > score_away
        home.win
        away.lose
    else
        away.win
        home.lose
    end
end

system "clear"
puts "Welcome to #{$league}, the best league in the world"
option = ""
while option != "Exit"
    # invokes the menu and stores option in the variable
    option = select_option
    # case statement to handle the options menu
    case option
        when "Ladder"
            $league.print_ladder
        when "Team Info"
            team = select_team
            team.full_info
        when "Play game"
            home = select_team
            away = select_team
            mode = select_game_mode
            play_game(home, away, mode)
        when "Train"
            team = select_team
            team.train
        else
            puts "See you next time!"
            next
    end
    print "Press enter key to continue"
    gets
    system "clear"
end