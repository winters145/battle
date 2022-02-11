require_relative '../../app.rb'
require_relative '../../lib/player.rb'
require_relative '../../lib/game.rb'

feature 'Attacking' do
  scenario 'Player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dash attacked Chloe'
  end

  scenario 'Player 2 hit points reach zero' do
    sign_in_and_play
    18.times { (click_button 'Attack') && (click_button 'Return') }
    click_button 'Attack'
    expect(page).to have_content 'Chloe LOSES!'
  end
end
