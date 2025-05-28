class CreateExamAttempts < ActiveRecord::Migration[7.2]
  def change
    create_table :exam_attempts do |t|
      t.integer :exam_id
      t.integer :user_id
      t.date :started_at
      t.date :submitted_at
      t.integer :score
      t.boolean :completed

      t.timestamps
    end
  end
end
