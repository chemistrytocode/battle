def sign_in_and_play
  visit '/'
  fill_in 'player_one', with: 'Tom'
  fill_in 'player_two', with: 'Isabel'
  click_button 'Submit'
end

def attack_and_ok
  click_button 'Attack!'
  click_button 'Ok...'
end
