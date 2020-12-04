class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string      :name,           null:false   
      t.text        :example,        null:false
      t.integer     :category_id,    null:false
      t.integer     :prefecture_id,  null:false
      t.integer     :price,          null:false
      t.string      :menue,          null:false
      t.integer     :user_id,        foreign_key: true
      t.timestamps
    end
  end
end
