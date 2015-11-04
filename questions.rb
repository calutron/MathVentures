require_relative 'players'

class Questions

  def initialize(player)
    op = [:+, :-, :*]
    stat1 = 1 + rand(2)
    stat2 = 2 + rand(2)
    @q = [stat1, op.sample, stat2]
    @player = player
    # @ct_lifes = 3
    # @ct_points = 0 
    #puts "new question is up"
  end

  
  def format_question #enables computer to perform entire operation  
    @q.join(' ')
  end

  def compute_result #compute the result that was based on random equation
    @q[0].send(@q[1], @q[2])
  end

  def process_result(user_input) #verify if the computed result is equal to player answer
    result = compute_result.to_s
    if result == user_input
        @player.ct_points +=1 #credit one point
      puts "You are correct"
    else
        @player.ct_lifes -=1 #take one life away
      puts "You are wrong"
    end
    puts "Answer is: #{result}"
  end

   # def score_board
   #  when @ct_lifes == 0
   #    puts "Game Over! #{@player.ct_points} X #{@player.ct_points}" 
   #  end
  # end 

end


# challenge = Questions.new
#  puts challenge.format_question




