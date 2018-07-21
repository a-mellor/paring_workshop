require './lib/result'

RSpec.describe 'Result' do
  subject { Result.new }
  describe '#rules' do
    it 'returns a hash of outcomes' do
      rules = {
        'rock': ['scissors'],
        'paper': ['rock'],
        'scissors': ['paper']
      }

      expect(subject.rules).to eq rules
    end
  end
end
