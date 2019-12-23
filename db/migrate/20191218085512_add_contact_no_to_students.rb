class AddContactNoToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :contact_no, :string
  end
end
