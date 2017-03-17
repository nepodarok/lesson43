class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :count_item
      t.references :dish, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
