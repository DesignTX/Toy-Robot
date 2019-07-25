require 'rspec'
require './lib/robot.rb'

describe Robot do
  describe '#Intializers' do
    subject(:robot) { described_class.new }

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
  
  describe '#Robot Movements' do
    subject(:robot) { described_class.new }

    it 'faces West (3) when turning left once' do
      expect(robot.turn_left(1)).to be (3)
    end

    it 'faces West (3) when turning further than array length (9 rotations)' do
      expect(robot.turn_left(9)).to be (3)
    end

    it 'faces South (2) when turning right twice' do
      expect(robot.turn_right(2)).to be (2)
    end

    it 'faces North (0) when turning further than array length (16 rotations)' do
      expect(robot.turn_right(16)).to be (0)
    end

    it 'Moves 5 spaces Forwards' do
      expect(robot.move_forwards(5)).to be (5)
    end

    it 'Moves 21 spaces Backwards' do
      expect(robot.move_backwards(21)).to be (-21)
    end

    
  end
  

  













end