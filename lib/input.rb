#Input class will break down the string passed through ./data/commands into usable commands.


class Input 
  attr_reader :commands

  def initialize
    @commands = interpret_commands_from_file
    command_result = commands_valid?
    unless command_result[0]
     puts "Error in data/commands.txt Input: #{command_result[1]+1}, Command: #{command_result[2]}"
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
    # Loops through entire commands.txt, if there is a bad input, returns false with the index of the bad input and the entire input of that command.
    # Regex passes with only commands with F,B,L,R and positive whole numbers
    @commands.each_with_index do |command, index|
      unless command.match(/[FBLR]\d+$/)
        return [false, index, command]
      end
    end
    return [true]
  end

end
