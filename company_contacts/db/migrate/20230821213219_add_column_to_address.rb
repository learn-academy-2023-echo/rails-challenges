class AddColumnToAddress < ActiveRecord::Migration[7.0]
  def change
    # add_column :table_reference, :new_column, :data_type_4new_column
    add_column :addresses, :account_id, :integer
  end
end
