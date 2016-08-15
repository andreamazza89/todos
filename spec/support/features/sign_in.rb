module Features
  def sign_in
    visit root_path
    fill_in 'Email', with: 'a@a.a'
    click_on 'Sign in'
  end
end
