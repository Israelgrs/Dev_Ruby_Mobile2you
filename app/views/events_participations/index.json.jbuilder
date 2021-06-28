# frozen_string_literal: true

json.array! @events_participations, partial: 'events_participations/events_participation', as: :events_participation
