class CreateRides < ActiveRecord::Migration[4.2]
  def change
    create_table :rides do |t|
      t.integer :car_id
      t.integer :customer_id
    end
  end
end
