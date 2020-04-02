require 'rails_helper'

RSpec.describe Event, type: :model do
  describe 'validations' do
    it 'should have a title' do
      is_expected.to validate_presence_of(:title)
    end

    it 'should have a description' do
      is_expected.to validate_presence_of(:description)
    end
  end

  describe 'associations' do
    it 'should belongs to user/creator' do
      is_expected.to belong_to(:creator)
    end

    it 'has many attendances/invitations' do
      is_expected.to have_many(:attendances)
    end

    it 'has many attendees thru invitations' do
      is_expected.to have_many(:attendees).through(:attendances)
    end
  end
end
