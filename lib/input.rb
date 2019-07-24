#Input class will break down the string passed through ./data/commands into usable commands.


class Input 

  #self creates a class method
  def self.read_file
    File.open("./data/commands.txt").each do |x|
      puts(x)
    end 
  end 






end
