class AddSizeToSales < ActiveRecord::Migration[6.0]
  def change
    add_column :sales, :size, :string
  end
end
