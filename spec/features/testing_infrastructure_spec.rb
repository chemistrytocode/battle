# Player 1 = Tom
# Player 2 = Isabel

feature 'Set up game' do
  scenario 'fill form with names' do
    sign_in_and_play
    expect(page).to have_content ("Tom vs Isabel")
  end
  scenario 'show hit points' do
    sign_in_and_play
    expect(page).to have_content ("Isabel has 60/60 HP")
  end
end

feature 'Attack' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content ("Tom attacks Isabel")
  end

  scenario 'attack player 2 and decrease hit_points' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content ("Isabel now has 50/60 HP")
  end

  scenario 'switch turn after attack' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page)
  end
end

  feature 'Ok...' do
    scenario 'switch turns' do
      sign_in_and_play
      attack_and_ok
      expect(page).to have_content ("Isabel's turn")
    end
  end

  feature 'Game Over' do
    scenario 'Player 1 wins' do
      sign_in_and_play
      11.times { attack_and_ok }
      expect(page).to have_content ("Game Over")
  end
end





    # save_and_open_page
