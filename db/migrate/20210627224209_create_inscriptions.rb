# frozen_string_literal: true

# Creating the Inscriptions Table
class CreateInscriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :inscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :inscription_date

      t.timestamps
    end
  end
end
