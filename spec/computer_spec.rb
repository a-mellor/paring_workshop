require './lib/computer'

RSpec.describe 'Computer' do
  subject { Computer.new }

  context 'paper' do
    before do
      # always return paper
      subject.rand_seed = 1
    end

    describe '#hand' do
      it 'returns paper' do
        expect(subject.hand).to eq 'paper'
      end
    end
  end

  context 'rock' do
    before do
      # always return rock
      subject.rand_seed = 2
    end

    describe '#hand' do
      it 'returns rock' do
        expect(subject.hand).to eq 'rock'
      end
    end
  end

  context 'scissors' do
    before do
      # always return scissors
      subject.rand_seed = 3
    end

    describe '#hand' do
      it 'returns scissors' do
        expect(subject.hand).to eq 'scissors'
      end
    end
  end
end
