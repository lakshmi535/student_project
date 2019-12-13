class AddRoleToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :role, index: true
    add_column :users, :name, :string
  end
end
