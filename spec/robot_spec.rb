require 'rspec'
require './lib/robot.rb'

describe Robot do
  describe '#Intializers' do
    subject(:robot) { described_class.new}

    it 'has intial x distance of 0' do
      expect(robot.position_x).to be (0)
    end

    it 'has initial y distance of 0' do
      expect(robot.position_y).to be (0)
    end

    it 'has initial facing direction of 0' do
      expect(robot.facing).to be (0)
    end
  end
  

  













end