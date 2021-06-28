# frozen_string_literal: true

# Creatin the Events Class
class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.datetime :event_date
      t.string :event_place

      t.timestamps
    end
  end
end
