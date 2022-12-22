require 'rails_helper'

RSpec.describe 'Entities', type: :model do
  describe 'Entity model' do
    user = User.create(name: 'Tom', email: 'tom@example.com', password: '123456')
    group = Group.create(name: 'Food', icon: 'food.png', user_id: user)
    subject { Entity.new(user_id: user, group_id: group, name: 'Sugar', amount: 10.20) }
    before { subject.save }

    it 'should check that the name is not blank' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should check that the amount is not blank' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end
  end
end
