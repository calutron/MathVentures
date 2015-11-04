require_relative 'players'
require_relative 'questions'

class Ui
  attr_accessor :p1_nam, :p2_nam

  def initialize
    @user_input = nil
    #puts "Ui is up"
  end

  def get_player_name
    print "Welcome to Mathventure, new player, what is your name?  "
    gets.chomp
  end

  def get_answer
    print "> "
    gets.chomp
  end

  def display_scores(players)
    players.each do |player|
      puts "Player (#{player.name}): #{player.ct_lifes} lives, #{player.ct_points} points"
    end
  end


end