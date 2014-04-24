class CreateHappyHours < ActiveRecord::Migration
  def change
    create_table :happy_hours do |t|
      t.time :start_time
      t.time :end_time
      t.text :details
      t.integer :place_id

      t.timestamps
    end
  end
end
