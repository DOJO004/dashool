class AddColumnsToCocktail < ActiveRecord::Migration[7.1]
  def change
    add_column :cocktails, :history, :text
    add_column :cocktails, :drink_style, :string
    add_column :cocktails, :skill, :string
    add_column :cocktails, :base_wine, :string
  end
end
