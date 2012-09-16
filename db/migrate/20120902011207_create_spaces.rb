class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :title
      t.text :description
      t.string :grid
      t.string :h20
      t.text :roads
      t.text :zoned
      t.string :deed
      t.string :hoa
      t.text :size
      t.string :state
      t.integer :bid
      t.integer :user_id

      t.timestamps
    end

    add_index :spaces, [:user_id, :created_at]
  end
end