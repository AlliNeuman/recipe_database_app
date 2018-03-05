class CreateRecipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cook_time
      t.string :directions
      t.integer :user_id
    end
  end
end
