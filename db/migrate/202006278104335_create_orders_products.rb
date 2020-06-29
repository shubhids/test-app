class CreateOrdersProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :orders_products do |t|
    	t.references :order, foreign_key: true
    	t.references :product, foreign_key: true
      t.timestamps
    end

    add_index :orders_products, [:order_id, :product_id]
  end
end
