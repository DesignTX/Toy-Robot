#Simulation class interprets array data from inputs.rb in order to give movements to robot class
require_relative "input.rb"
require_relative "robot.rb"

class Simulation

  def initialize()
    @input = Input.new
    puts @input.commands
    @robot = Robot.new
    @robot.report
    @robot.turn_right
    @robot.report
    @robot.turn_right
    @robot.report
    @robot.turn_right
    @robot.report
    @robot.turn_right
    @robot.report
    @robot.turn_right
    @robot.report
    @robot.turn_right
    @robot.report

  end

end