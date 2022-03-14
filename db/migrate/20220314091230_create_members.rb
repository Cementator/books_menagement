class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :user_type
      t.integer :number_of_loans

      t.timestamps
    end
  end
end
