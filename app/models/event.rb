class Event < ApplicationRecord
  validates :title, presence: true
  validates :starttime, presence: true
  validates :location, presence: true
  validates :organizermail, presence: true
end
