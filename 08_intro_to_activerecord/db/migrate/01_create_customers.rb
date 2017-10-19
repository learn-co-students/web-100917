class CreateCustomers < ActiveRecord::Migration[4.2]
  # def up
  #   create_table :customers do |t|
  #     t.string :name
  #     t.string :city
  #   end
  # end
  #
  # def down
  #   drop_table :customers
  # end

  def change
    create_table :customers do |t|
      t.string :name
      t.string :city
    end
  end
end
