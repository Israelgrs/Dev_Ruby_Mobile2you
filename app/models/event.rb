class Event < ApplicationRecord
    has_many :inscription
    has_many :award
    has_many :events_participation
end
