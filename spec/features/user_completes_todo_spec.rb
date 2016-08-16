require 'rails_helper'

feature 'User completes a todo' do
  scenario 'todo class is updated to completed' do
    sign_in
    click_on 'New Todo'
    fill_in 'Title', with: 'Buy eggs'
    click_on 'Submit'
    click_on 'Mark complete'
    expect(page).to have_css '.todos li.completed', text: 'Buy eggs'
  end
end
