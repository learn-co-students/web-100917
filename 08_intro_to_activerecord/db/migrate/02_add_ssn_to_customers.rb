class AddSsnToCustomers < ActiveRecord::Migration[4.2]
  def change
    add_column(:customers, :ssn, :integer)
  end
end
