require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it 'should have a name' do
      is_expected.to validate_presence_of(:name)
    end

    it 'should have a email' do
      is_expected.to validate_presence_of(:email)
    end

    it 'has a unique email' do
      is_expected.to validate_uniqueness_of(:email).ignoring_case_sensitivity
    end

    it 'should not accept a invalid email format' do
      is_expected.to_not allow_value('abcdef@').for(:email)
    end
  end

  describe 'associations' do
    it 'has many events' do
      is_expected.to have_many(:events)
    end

    it 'has many attendances/invitations' do
      is_expected.to have_many(:attendances)
    end

    it 'has many attended_events thru invitations' do
      is_expected.to have_many(:attended_events).through(:attendances)
    end
  end
end
