class ChangeNumberToRestaurants < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :number, :phone_number
  end
end
