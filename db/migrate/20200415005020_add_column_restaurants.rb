class AddColumnRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :open, :time
    
    add_column :restaurants, :closed, :time
  end
end
