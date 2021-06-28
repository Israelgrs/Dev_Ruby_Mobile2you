# frozen_string_literal: true

class Inscription < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
