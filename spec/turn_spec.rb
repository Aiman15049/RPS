require './lib/turn'

describe Turn do
subject(:turn) { described_class.new(options) }
let(:options) { {"player_name" => "Maker", "player_shape" => :rock, "opponent_shape" => :scissors} }

  describe '#player_name' do
    it 'returns the player name' do
      expect(turn.player_name).to eq "Maker"
    end

  end


  describe '#player_shape' do
    it 'returns the player shape' do
      expect(turn.player_shape).to eq :rock
    end
  end

    describe '#opponent_shape' do
      it 'returns the opponent_shape' do
        expect(turn.opponent_shape).to eq :scissors
      end
    end

    context 'end game' do
      it 'returns you win if player shape is rock and opponent shape is scissors' do
      expect(turn.win?).to eq true
    end
  end 
end
