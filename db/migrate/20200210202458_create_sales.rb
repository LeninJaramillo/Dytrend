class CreateSales < ActiveRecord::Migration[6.0]
  def change
    create_table :sales do |t|
      t.string :kind
      t.string :gender
      t.string :brand
      t.text :description
      t.decimal :price
      t.integer :user_id

      t.timestamps
    end
  end
end
