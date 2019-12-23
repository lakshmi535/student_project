class AddColsToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :level_id, :integer
    add_column :marks, :student_id, :integer
    add_column :marks, :exam_id, :integer
  end
end
