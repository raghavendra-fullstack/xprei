class CreateSchoolExams < ActiveRecord::Migration[7.2]
  def change
    create_table :school_exams do |t|
      t.integer :school_id
      t.integer :exam_id
      t.date :purchase_date

      t.timestamps
    end
  end
end
