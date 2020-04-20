class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string     :menuname, null: false
      t.string     :photo
      t.integer    :price, null: false
      t.string     :detail
      t.references :restaurant, null: false, foreign_key:true
      t.references :user, null: false, foreign_key:true

      t.timestamps
    end
  end
end
