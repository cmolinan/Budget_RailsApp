require 'rails_helper'

RSpec.describe 'Category Index Page', type: :feature do
  before :each do
    @user = User.create(name: 'Tom', email: 'tom@m.com', password: 'password')

    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
  end

  it 'Renders the Category index page' do
    sleep(3)
    expect(current_path).to eql('/groups')
  end

  it 'Has a button to add a new Category' do
    sleep(2)
    expect(page).to have_content('Add Category')
  end

  it 'Renders the page to add a new Category' do
    click_link 'Add Category'
    sleep(2)
    expect(current_path).to eql('/groups/new')
  end
end
