class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :attendees, through: :attendances
  has_many :attendances, foreign_key: 'attended_event_id'

  def self.past
    Event.where("date < ?", Date.today)
  end

  def self.upcoming
    Event.where("date >= ?", Date.today)
  end

end
