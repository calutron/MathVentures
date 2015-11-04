# require_relative 'questions'
require_relative 'ui'

class Player
  attr_accessor :ct_lifes, :ct_points
  attr_accessor :name

  def initialize(name)  
    #puts "Players are up"
    @name = name
    @ct_lifes = 3
    @ct_points = 0
  end


end




