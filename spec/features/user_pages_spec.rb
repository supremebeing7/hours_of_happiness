require 'spec_helper'

feature 'User Login' do
  scenario 'with valid credentials' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_button 'Sign in'
    page.should have_content 'Signed in successfully'
  end

  scenario 'with blank field' do
    user = FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email', :with => user.email
    click_button 'Sign in'
    page.should have_content "Invalid email or password"
  end
end
