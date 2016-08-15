require 'rails_helper'

feature 'User creates todo' do
  scenario 'successfully' do
    sign_in
    click_on 'New Todo'
    fill_in 'Title', with: 'Buy eggs'
    click_on 'Submit'
    expect(page).to have_css '.todos li', text: 'Buy eggs'
  end
end
