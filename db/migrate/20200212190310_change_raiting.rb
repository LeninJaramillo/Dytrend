class ChangeRaiting < ActiveRecord::Migration[6.0]
  def change
    rename_column :ratings, :raiting, :rating
  end
end
