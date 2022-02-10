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

end


