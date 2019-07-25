require 'rspec'
require './lib/simulation.rb'

describe Simulation do
  describe '#Distance' do
  subject(:simulation) { described_class.new }

    it 'has a minimum distance of 4 from starting location' do
      simulation.run
      expect(simulation.distance).to be (4)
    end
  end
end