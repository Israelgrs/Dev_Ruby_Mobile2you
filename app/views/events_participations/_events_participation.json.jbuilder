# frozen_string_literal: true

json.extract! events_participation, :id, :user_id, :event_id, :was_present, :created_at, :updated_at
json.url events_participation_url(events_participation, format: :json)
