class CreateLines < ActiveRecord::Migration
  def change
    create_table :lines do |t|
      t.float :weight
      t.integer :recipe_id
      t.float :ratio
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
