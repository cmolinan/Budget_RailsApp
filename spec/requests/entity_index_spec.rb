require 'rails_helper'

RSpec.describe 'Entity Index Page', type: :feature do
  before :each do
    @user = User.create(name: 'Tom', email: 'tom@m.com', password: 'password')
    @group = Group.create name: 'Education', icon: 'education.png', user: @user
    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    sleep 1
    click_link 'Education'
  end

  it 'Renders the Transactions index Page' do
    sleep(3)
    expect(current_path).to have_content('/entities')
  end

  it 'Has a button to add a new Transaction' do
    expect(page).to have_content('New Transaction')
  end
end
