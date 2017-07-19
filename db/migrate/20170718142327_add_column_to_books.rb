class AddColumnToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :library_id, :integer, foreign_key: :true 
  end
end
