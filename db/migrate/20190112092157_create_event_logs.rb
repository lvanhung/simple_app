class CreateEventLogs < ActiveRecord::Migration
  def change
    create_table :event_logs do |t|
      t.string :event_name
      t.datetime :timestamp

      t.timestamps null: false
    end
  end
end
