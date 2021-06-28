class CreateEventsParticipations < ActiveRecord::Migration[6.1]
  def change
    create_table :events_participations do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.boolean :was_present

      t.timestamps
    end
  end
end
