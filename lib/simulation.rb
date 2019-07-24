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
  end




  private
  def interpret_command(command)
    case command[0]
    when "L"
      @robot.turn_left
    when "R"
      @robot.turn_right
    when "F"
      #to_i because command[1..-1] pulled data from command.txt which was a string, need to convert to integer 
      @robot.move_forwards(command[1..-1].to_i)
    when "B"
      @robot.move_backwards(command[1..-1].to_i)
    else 
      puts "invalid command"
    end
  end


end