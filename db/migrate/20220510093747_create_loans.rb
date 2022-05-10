class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.integer :book_id
      t.integer :user_id
      t.datetime :loan_date
      t.datetime :loan_expiration_date

      t.timestamps
    end
  end
end
