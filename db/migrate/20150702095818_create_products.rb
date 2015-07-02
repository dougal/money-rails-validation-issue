class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :price_cents, default: 0
      t.string  :currency, default: 'USD'
      t.timestamps null: false
    end
  end
end
