# frozen_string_literal: true

json.extract! award, :id, :event_id, :award_name, :user_id, :created_at, :updated_at
json.url award_url(award, format: :json)
