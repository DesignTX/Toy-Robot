#Input class will break down the string passed through ./data/commands into usable commands.


class Input 
  attr_reader :commands

  def initialize
    @commands = interpret_commands_from_file
  end
  
  #self creates a class method
  private
  def interpret_commands_from_file
    File.open("./data/commands.txt") do |line|
      return line.read.split(',')
    end 
  end 


end
