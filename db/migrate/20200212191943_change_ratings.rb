class ChangeRatings < ActiveRecord::Migration[6.0]
  def change
    remove_column :ratings, :user_seller_id
  end
end
