class AddEmailIdToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :email_id, :string
  end
end
