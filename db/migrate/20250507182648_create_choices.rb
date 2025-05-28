class CreateChoices < ActiveRecord::Migration[7.2]
  def change
    create_table :choices do |t|
      t.integer :question_id
      t.text :choice_text
      t.boolean :is_correct

      t.timestamps
    end
  end
end
