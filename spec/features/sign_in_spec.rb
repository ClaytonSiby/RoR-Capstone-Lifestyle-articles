require 'rails_helper'

RSpec.feature 'SignIn', type: :feature do
  before(:each) { User.create(name: 'Clayton', email: 'clay@example.com', password: 122) }
  scenario 'User signs in successfully' do
    visit new_session_path
    fill_in 'Name', with: 'Clayton'
    click_button 'Sign In'
    expect(page).to have_text('You have logged in successfully!')
  end
end
