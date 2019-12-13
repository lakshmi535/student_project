class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
    	t.string :name
    	t.integer :level_id
    	t.integer :english_marks
    	t.integer :math_marks
    	t.integer :science_marks

      t.timestamps
    end
  end
end
