class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.integer :company_id
      t.string :name
      t.string :title
      t.timestamps
    end
  end
end
