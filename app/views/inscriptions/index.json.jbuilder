# frozen_string_literal: true

json.array! @inscriptions, partial: 'inscriptions/inscription', as: :inscription
