# frozen_string_literal: true

# Create the Awards Table
class CreateAwards < ActiveRecord::Migration[6.1]
  def change
    create_table :awards do |t|
      t.references :event, null: false, foreign_key: true
      t.string :award_name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
