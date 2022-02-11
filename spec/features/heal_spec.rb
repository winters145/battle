require_relative '../../app.rb'
require_relative '../../lib/player.rb'
require_relative '../../lib/game.rb'

feature 'Healing' do
  scenario 'Player 2 heals themself' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content "Chloe: 90HP"
    click_button 'Heal'
    click_button 'Return'
    expect(page).to have_content "Chloe: 100HP"
  end
end