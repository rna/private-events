require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def setup
    @event = Event.new(title: 'Example event', description: 'Example description', creator_id: 1)
  end

  test 'title should not be blank' do
    @event.title = '  '
    assert_not @event.valid?
  end

  test 'description should not be blank' do
    @event.description = '  '
    assert_not @event.valid?
  end
end
