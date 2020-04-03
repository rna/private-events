require 'rails_helper'

RSpec.describe Attendance, type: :model do
  describe 'associations' do
    it 'should belongs to user/attendee' do
      is_expected.to belong_to(:attendee)
    end

    it 'should belongs to event/attended_event' do
      is_expected.to belong_to(:attended_event)
    end
  end
end
