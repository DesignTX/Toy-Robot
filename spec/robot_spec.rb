require 'rspec'
require './lib/robot.rb'

describe Robot do
  describe '#initializers' do
    subject(:robot) { described_class.new}

    it 'has intial x distance of 0' do
      expect(robot.position_x).to be (0)
    end
  end













end