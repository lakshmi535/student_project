class CreateLevels < ActiveRecord::Migration[5.2]
  def change
    create_table :levels do |t|
    	t.integer :level_number

      t.timestamps
    end
    Level.create :level_number => 1
    Level.create :level_number => 2
    Level.create :level_number => 3
    Level.create :level_number => 4
    Level.create :level_number => 5
  end
  def down
  	drop_table :levels
  end
end
