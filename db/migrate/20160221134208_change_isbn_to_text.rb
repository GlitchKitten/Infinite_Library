class ChangeIsbnToText < ActiveRecord::Migration
  def up
    change_column :books, :isbn, :string
  end

  def down
    remove_column :books, :isbn, :integer
  end
end