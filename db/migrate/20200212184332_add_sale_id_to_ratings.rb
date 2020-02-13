class AddSaleIdToRatings < ActiveRecord::Migration[6.0]
  def change
    add_column :ratings, :sale_id, :integer
  end
end
