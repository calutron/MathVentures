require_relative 'ui'
require_relative 'players'
# require_relative 'questions'
# initp = Players.new

ui = Ui.new
# init_ui.player_naming #trigger UI

player1 = Player.new(ui.get_player_name) # create players
player2 = Player.new(ui.get_player_name) 

players = [player1, player2]

until players.any? {|player| player.ct_lifes == 0 } do

  players.each do |player|
    challenge = Questions.new(player) #create question and reference to player counter

    print "Very well #{player.name}.  What is?  "

    puts challenge.format_question #output question

    challenge.process_result(ui.get_answer) #feed compute and evaluate engine on questions
  end 
end

ui.display_scores(players)









