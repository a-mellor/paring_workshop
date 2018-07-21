require './lib/game'

RSpec.describe 'Game' do
  let(:computer) { Computer.new }
  let(:player) { Player.new(hand) }
  let(:game) { Game.new(player, computer) }


  describe '#hand' do
    let(:hand) { 'rock' }

    before do
      # always return paper
      computer.rand_seed = 1
    end

    it 'returns each players move' do
      expect(game.player.hand).to eq 'rock'
      expect(game.computer.hand).to eq 'paper'
    end
  end

  context 'Computer plays paper' do
    before do
      # always return paper
      computer.rand_seed = 1
    end

    describe '#result' do
      context 'when player plays rock and computer paper' do
        let(:hand) { 'paper' }

        it 'returns winner' do
          expect(game.result).to eq 'draw'
        end
      end

      context 'when player plays scissors and computer paper' do
        let(:hand) { 'scissors' }

        it 'returns winner' do
          expect(game.result).to eq 'Player wins'
        end
      end

      context 'when player play rock and compuer paper' do
        let(:hand) { 'rock' }

        it 'returns winner' do
          expect(game.result).to eq 'Computer wins'
        end
      end
    end
  end
end
