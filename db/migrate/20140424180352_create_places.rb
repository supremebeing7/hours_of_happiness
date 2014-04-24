class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.text :address
      t.text :description
      t.text :hh_description

      t.timestamps
    end
  end
end
