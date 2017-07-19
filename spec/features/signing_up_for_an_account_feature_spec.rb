require 'rails_helper'

feature 'signing up for an account' do
  scenario 'the user visits the registration form from the home page' do
    visit '/'
    click_link('Sign Up')

    expect(page).to have_current_path new_user_path
  end
end
