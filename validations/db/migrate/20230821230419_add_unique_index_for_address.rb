class AddUniqueIndexForAddress < ActiveRecord::Migration[7.0]
  def change
    add_index :addresses, [:street_number, :street_name, :zip], unique: true
  end
end
