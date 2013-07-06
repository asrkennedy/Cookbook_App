class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cook_time
      t.text :instructions
      t.string :ingredients

      t.timestamps
    end
  end
end
