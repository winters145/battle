feature 'Change turns' do 
  scenario 'Changes player turn from player_1 to player_2 after an attack' do
    sign_in_and_play
    expect(page).to have_content "Dash's turn"
    click_button 'Attack'
    click_button 'Return'
    expect(page).to have_content "Chloe's turn"  
  end
end