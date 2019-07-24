#Robot class tracks the position and facing direction of the robot and execute movement commands

class Robot
  attr_reader :position_x,:position_y,:facing

  def initialize
    @position_x = 0
    @position_y = 0
    #facing relates to the index in the 'directions'
    @facing = 0
    @directions = ['North','East','South','West']
  end





end
