class CreateLibraries < ActiveRecord::Migration[5.0]
  def change
    create_table :libraries do |t|
      t.string :title, null: false
      t.string :address,null: false

      t.timestamps
    end
  end
end
