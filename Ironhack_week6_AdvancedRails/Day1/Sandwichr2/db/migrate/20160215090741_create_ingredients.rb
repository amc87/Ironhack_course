class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :calorie
      t.string :string

      t.timestamps null: false
    end
  end
end
