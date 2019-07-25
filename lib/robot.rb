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

  def report
    puts "x: #{position_x}, y: #{position_y}, facing: #{facing_to_s}"
  end

  def turn_left(steps)
    # Spin Modulo 4 disregards full turns to get a value within the parameters of the @facing, - spin to turn left, + spin to turn right
    spin = steps % 4
    facing_direction = @directions[@facing - spin]
    @facing = @directions.find_index(facing_direction)
  end

  def turn_right(steps)
    # Spin Modulo 4 disregards full turns to get a value within the parameters of the @facing, - spin to turn left, + spin to turn right
    spin = steps % 4
    facing_direction = @directions[@facing + spin]
    @facing = @directions.find_index(facing_direction)
  end

  def move_forwards(steps)
    case @facing
    when 0
      @position_y += steps
    when 1
      @position_x += steps
    when 2
      @position_y -= steps
    when 3
      @position_x -= steps
    end
  end

  def move_backwards(steps)
    case @facing
    when 0
      @position_y -= steps
    when 1
      @position_x -= steps
    when 2
      @position_y += steps
    when 3
      @position_x += steps
    end
  end



  #facing outputs a number, create function to output facing index as string
  private
  def facing_to_s
    return @directions[@facing] 
  end



end
