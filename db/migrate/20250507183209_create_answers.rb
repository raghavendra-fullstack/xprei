class CreateAnswers < ActiveRecord::Migration[7.2]
  def change
    create_table :answers do |t|
      t.integer :attempt_id
      t.integer :question_id
      t.integer :choice_id
      t.text :answer_text
      t.boolean :is_correct
      t.integer :points_awarded

      t.timestamps
    end
  end
end
