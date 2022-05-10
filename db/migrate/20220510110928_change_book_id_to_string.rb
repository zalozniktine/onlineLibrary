class ChangeBookIdToString < ActiveRecord::Migration[6.1]
  def change
    change_column :loans, :book_id, :string
  end
end
