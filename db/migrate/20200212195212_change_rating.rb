class ChangeRating < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :sale_id, :user_seller_id
  end
end
