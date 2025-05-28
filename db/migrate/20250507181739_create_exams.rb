class CreateExams < ActiveRecord::Migration[7.2]
  def change
    create_table :exams do |t|
      t.string :title
      t.text :description
      t.integer :instructor_id
      t.integer :duration_minutes
      t.integer :max_attempts

      t.timestamps
    end
  end
end
