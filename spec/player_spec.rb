describe Player do

subject(:dash) {Player.new('Dash')}
subject(:chloe) {Player.new('Chloe')}

describe '#name' do
it 'should return its name' do
    expect(dash.name).to eq 'Dash'
  end
end

describe '#hit_points' do
  it 'returns the hit points' do
    expect(dash.hit_points).to eq described_class::DEFAULT_HIT_POINTS
  end
end

describe '#receives_attack' do
  it 'reduces players hit points by 10' do
    expect(chloe).to receive(:receives_attack)
    dash.attack(chloe)
    # expect{dash.receives_attack}.to change {dash.hit_points}.by(-10)
  end
end

describe '#attack' do
  it 'attacks the player' do
    expect{ chloe.attack(dash)}.to change {dash.hit_points}.by(-10)
end
end
end


