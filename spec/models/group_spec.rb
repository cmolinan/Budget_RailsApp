require 'rails_helper'

RSpec.describe Group, type: :model do
  describe 'Group model' do
    before(:each) do
      @user = User.create name: 'Tom', email: 'tom@m.com', password: 'password'
    end

    it 'the name must not be blank' do
      group = Group.create name: '', icon: 'icon.png', user: @user
      expect(group).to_not be_valid
    end
  end
end
