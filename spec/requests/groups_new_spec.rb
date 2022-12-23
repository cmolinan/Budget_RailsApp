require 'rails_helper'

RSpec.describe 'Category Add New', type: :feature do
  before :each do
    @user = User.create(name: 'Tom', email: 'tom@m.com', password: 'password')

    visit root_path
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: @user.password
    click_button 'Log in'
    sleep 1
    click_link 'Add Category'
  end

  it 'Renders the Category new Page' do
    expect(current_path).to eql('/groups/new')
  end

  it 'Has the form to add a new Category' do
    expect(page).to have_content('ADD CATEGORY')
  end
end
