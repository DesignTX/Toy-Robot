#Input class will break down the string passed through ./data/commands into usable commands.


class Input 
  attr_reader :commands

  def initialize
    @commands = interpret_commands_from_file
    unless commands_valid?
      puts "invalid command found"
      puts "PROGRAM TERMINATED"
      exit
    end
  end
  
  private
  def interpret_commands_from_file
    File.open("./data/commands.txt") do |line|
      return line.read.split(',')
    end 
  end 

  # Takes in raw input from commands.txt and checks whether the raw inputs are valid, returning true or false.

  def commands_valid?
    # %w Rubys way of making a word array
    known_commands = %w(F B L R)
    @commands.each do |command|
      unless known_commands.include?(command[0])
        return false
      end
    end
    return true
  end



end
