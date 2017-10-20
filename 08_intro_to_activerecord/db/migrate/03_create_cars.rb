class CreateCars < ActiveRecord::Migration[4.2]
  def change
    create_table :cars do |t|
      t.string :license_plate
      t.string :make
      t.string :model
      t.string :driver_name
      t.integer :year
    end
  end
end
