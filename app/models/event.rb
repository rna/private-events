class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'creator', class_name: 'User'
end
