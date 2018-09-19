class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :e_id
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end
