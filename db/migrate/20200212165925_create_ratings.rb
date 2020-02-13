class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :user_buyer_id
      t.integer :user_seller_id
      t.integer :raiting
      t.text :description

      t.timestamps

    end
  end
end
