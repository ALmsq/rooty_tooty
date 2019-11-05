class AddIngredientToSmoothies < ActiveRecord::Migration[6.0]
  def change
    add_column :smoothies, :ingredient_id, :integer
  end
end
