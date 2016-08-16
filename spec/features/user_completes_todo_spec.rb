require 'rails_helper'

feature 'User completes todo' do
  scenario 'todo class is updated to completed' do
    sign_in
    create_todo('Buy eggs')
    click_on 'Mark complete'
    expect(page).to display_completed_todo 'Buy eggs'
  end
end
