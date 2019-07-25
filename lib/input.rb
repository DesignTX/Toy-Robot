#Input class will break down the string passed through ./data/commands into usable commands.


class Input 
  attr_reader :commands

  def initialize
    @commands = interpret_commands_from_file
    command_result = commands_valid?
    unless command_result[0]
     puts "Error in Input: #{command_result[1]+1}, Command: #{command_result[2]}"
     puts "Program will now exit."
    exit
    end
  end
  
  private
  #Splits data from commands.txt into usable array
  def interpret_commands_from_file
    File.open("./data/commands.txt") do |line|
      return line.read.split(',')
    end 
  end 

  # Takes in raw input from commands.txt and checks whether the raw inputs are valid, returning true or false.
  def commands_valid?
    # %w Rubys way of making a word array
    known_commands = %w(F B L R)
    @commands.each_with_index do |command, index|
      unless known_commands.include?(command[0])
        return [false, index, command]
      end
    end
    return [true]
  end



end
