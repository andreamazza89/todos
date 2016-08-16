require 'rails_helper'

feature 'User marks todo incomplete' do
  scenario 'todo class is updated to completed' do
    sign_in
    create_todo('Buy eggs')
    click_on 'Mark complete'
    click_on 'Mark incomplete'
    expect(page).not_to display_completed_todo 'Buy eggs'
    expect(page).to display_todo 'Buy eggs'
  end
end
