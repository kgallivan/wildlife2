class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.datetime :date
      t.timestamp :time
      t.integer :latitude
      t.integer :longitude
      t.references :animal, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
