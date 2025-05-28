class CreateExamCategories < ActiveRecord::Migration[7.2]
  def change
    create_table :exam_categories do |t|
      t.integer :exam_id
      t.integer :category_id

      t.timestamps
    end
  end
end
