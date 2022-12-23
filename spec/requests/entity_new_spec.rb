require 'rails_helper'

RSpec.describe 'Transaction Add New', type: :feature do
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
    sleep 1
    click_link 'New Transaction'
  end

  it 'Renders the Transactions new Page' do
    expect(current_path).to have_content('/entities/new')
  end

  it 'Has the form to add a new Transaction' do
    expect(page).to have_content('ADD TRANSACTION')
  end
end
