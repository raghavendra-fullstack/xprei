class CreateSchools < ActiveRecord::Migration[7.2]
  def change
    create_table :schools do |t|
      t.string :name
      t.text :address
      t.string :contact_email
      t.string :phone
      t.string :phone_country_code
      t.string :zip

      t.timestamps
    end
  end
end
