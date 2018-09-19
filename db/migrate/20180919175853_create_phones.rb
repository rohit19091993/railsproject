class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.integer :p_id
      t.integer :e_id
      t.integer :phone_number
      t.string :phone_type

      t.timestamps
    end
  end
end
