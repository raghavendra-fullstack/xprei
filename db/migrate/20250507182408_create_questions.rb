class CreateQuestions < ActiveRecord::Migration[7.2]
  def change
    create_table :questions do |t|
      t.integer :exam_id
      t.text :question_text
      t.string :question_type
      t.integer :points
      t.text :description

      t.timestamps
    end
  end
end
