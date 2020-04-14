class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string     :name, null: false, index: true
      t.integer    :cuisine_id, null: false
      t.integer    :form_id, null: false
      t.string     :detail
      t.integer    :prefecture_id, null: false
      t.string     :city, null: false
      t.string     :block
      t.string     :building_name
      t.string     :accsess
      t.string     :holiday
      t.references :user, null: false, foreign_key:true

      t.timestamps
    end
  end
end
