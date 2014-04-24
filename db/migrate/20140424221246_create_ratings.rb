class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :place_id
      t.text :review
      t.integer :score

      t.timestamps
    end
  end
end
