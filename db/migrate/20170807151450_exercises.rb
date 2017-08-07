class Exercises < ActiveRecord::Migration[5.0]
    def change
      create_table :exercises do |t|
        t.belongs_to :language, null: false
        t.string :difficulty, null: false
        t.string :description, null: false
        t.string :solution, null: false
        t.date :date, null: false
        t.timestamps
      end
    end
end
