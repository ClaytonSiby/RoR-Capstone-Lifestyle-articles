require 'rails_helper'

RSpec.feature 'SignIn', type: :feature do
  before(:each) { User.create(name: 'Clayton', email: 'clay@example.com', password: 122) }
  scenario 'User signs in successfully' do
    visit new_session_path
    fill_in 'Name', with: 'Clayton'
    fill_in 'Email', with: 'clay@example.com'
    fill_in 'Password', with: 122
    click_button 'Sign In'
    expect(page).to have_text('You have logged in successfully!')
  end

  scenario 'User cannot sign in with invalid name' do
    visit new_session_path
    fill_in 'Name', with: 'Tafadzwa'
    fill_in 'Email', with: 'clay@example.com'
    fill_in 'Password', with: 122
    click_button 'Sign In'
    expect(page).to have_text('Name not recognised!')
  end
end
