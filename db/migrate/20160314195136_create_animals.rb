class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.text :location

      t.timestamps null: false
    end
  end
end
