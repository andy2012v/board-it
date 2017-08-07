class Languages < ActiveRecord::Migration[5.0]
  def change
    create_table :langauges do |t|
      t.string :name, null: false
      t.string :image_url_1, null: false
      t.string :image_url_2, null: false
      t.string :image_url_3, null: false
      
      t.timestamps
    end
  end
end
