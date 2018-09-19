class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.integer :email_id
      t.integer :e_id
      t.string :email
      t.string :email_type

      t.timestamps
    end
  end
end
