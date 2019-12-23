class AddExamTypeAndTeluguMarksAndMathsMarksAndHindiMarksToMarks < ActiveRecord::Migration[5.2]
  def change
    add_column :marks, :exam_type, :boolean
    add_column :marks, :maths_marks, :integer
    add_column :marks, :hindi_marks, :integer
    add_column :marks, :telugu_marks, :integer
  end
end
