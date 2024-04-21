class RemoveSomeColumnFromCocktail < ActiveRecord::Migration[7.1]
  def change
    remove_column :cocktails, :history, :text
    remove_column :cocktails, :type_of, :string
    remove_column :cocktails, :drink_style, :string
    remove_column :cocktails, :introduce, :text
  end
end
