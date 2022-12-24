require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Michael', email: 'michael@m.com', password: '666666')
  end
  before { subject.save }

  it 'name should not be nil' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should valid the name' do
    subject.name = 'Michael'
    expect(subject).to be_valid
  end
end
