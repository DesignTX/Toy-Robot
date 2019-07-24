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
      puts "input forwards entered"
    when "B"
      puts "input backwards entered"
    else 
      puts "invalid command"
    end
  end


end