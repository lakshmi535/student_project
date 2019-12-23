class AddExamNameToExams < ActiveRecord::Migration[5.2]
  def change
    add_column :exams, :exam_name, :string
  end
end
