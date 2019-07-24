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

  def turn_left
    #@facing relates to the index of the array @directions, if were facing 'North' and we have to turn left ('West') it exceeds the bounds of the array, eg; reaching -5 will break.
    if @facing == 0
      @facing = 3
    else
      @facing -= 1
    end
  end

  def turn_right
    #@facing relates to the index of the array @directions, if were facing 'North' and we have to turn right ('North') it exceeds the bounds of the array, eg; reaching 5 will break.
    if @facing == 3
      @facing = 0
    else
      @facing += 1
    end
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
