require 'rspec'
require './lib/simulation.rb'

describe Simulation do
  describe '#Distance' do
  subject(:simulation) { described_class.new}

    it 'has distance of 4' do
      simulation.run
      expect(simulation.distance).to be (4)
    end
  end

  

end