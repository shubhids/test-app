class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.integer :quantity
      t.decimal :price
      t.boolean :availability, default: true
      t.string :color

      t.timestamps
    end
  end
end
