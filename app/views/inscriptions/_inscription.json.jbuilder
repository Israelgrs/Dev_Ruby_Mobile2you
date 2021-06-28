# frozen_string_literal: true

json.extract! inscription, :id, :user_id, :event_id, :inscription_date, :created_at, :updated_at
json.url inscription_url(inscription, format: :json)
