class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :desc
      t.decimal :price
      t.references :shop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
