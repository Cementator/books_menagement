class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.integer :loaned_to
      t.integer :loaned_book
      t.timestamp :duration
      t.boolean :returned

      t.timestamps
    end
  end
end
