# frozen_string_literal: true

class EventsParticipation < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
