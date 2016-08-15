require 'rails_helper'

feature 'User sees own todos only' do
  scenario 'does not see other users todos' do
    Todo.create(title: 'Buy cheese', email: 'ghost@a.a')

    sign_in_as 'a@a.a'

    expect(page).not_to have_css '.todos li', text: 'Buy cheese'
  end
end
