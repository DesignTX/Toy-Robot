#Simulation class interprets array data from inputs.rb in order to give movements to robot class
require_relative "input.rb"
require_relative "robot.rb"

class Simulation

  def initialize()
    @input = Input.new
    @robot = Robot.new
    @robot.report
  end

  def run
    @input.commands.each do |command|
      puts command
      interpret_command(command)
      @robot.report
    end
    puts("Minimum Distance From Starting Position #{calculate_distance}")
  end





  private

  def interpret_command(command)
    order = command[0]
    #to_i because command[1..-1] pulled data from command.txt which was a string, need to convert to integer     
    steps = command[1..-1].to_i
    
    case order
    when "L"
      @robot.turn_left(steps)
    when "R"
      @robot.turn_right(steps)
    when "F"

      @robot.move_forwards(steps)
    when "B"
      @robot.move_backwards(steps)
    end
  end

  def calculate_distance
    #Changes X and Y values to absolute values
  x = @robot.position_x.abs
  y = @robot.position_y.abs
  return x + y
  end


end