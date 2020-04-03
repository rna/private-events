class Event < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }
  validates :description, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :attendances, foreign_key: 'attended_event_id'
  has_many :attendees, through: :attendances
  scope :past, -> { where('date < ?', Date.today) }
  scope :upcoming, -> { where('date >= ?', Date.today) }
end
