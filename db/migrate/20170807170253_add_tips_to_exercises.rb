class AddTipsToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :tips, :string
  end
end
