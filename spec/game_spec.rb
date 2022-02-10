require 'game'

describe Game do

subject(:game) { described_class.new(dash, chloe) }
let(:dash) { double :player }
let(:chloe) { double :player }

# describe '#receives_attack' do
#   it 'reduces players hit points by 10' do
#     expect(chloe).to receive(:receives_attack)
#     dash.attack(chloe)
#     # expect{dash.receives_attack}.to change {dash.hit_points}.by(-10)
#   end
# end

  describe '#attack' do
    it 'attacks the player' do
      expect(chloe).to receive(:receives_attack)
      game.attack(chloe)
    end
  end

  describe "#initialize" do
    it 'saves an instance of two players' do
      expect(game.player_1).to eq dash
      expect(game.player_2).to eq chloe
    end
  end

end