class CreateHistoryOrders < ActiveRecord::Migration
  def change
    create_table :history_orders do |t|
      t.text :details
      t.text :contacts
      t.boolean :status, default: false

      t.timestamps null: false
    end
  end
end
