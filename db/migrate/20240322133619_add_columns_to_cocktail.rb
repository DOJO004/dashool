class AddColumnsToCocktail < ActiveRecord::Migration[7.1]
  def change
    add_column :cocktails, :history, :text
    add_column :cocktails, :production_method, :text
    add_column :cocktails, :drink_style, :string
    add_column :cocktails, :skill, :string
  end
end
