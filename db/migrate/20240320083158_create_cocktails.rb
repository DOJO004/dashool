class CreateCocktails < ActiveRecord::Migration[7.1]
  def change
    create_table :cocktails, id: :uuid do |t|
      t.string :name
      t.text :introduce
      t.string :type_of

      t.timestamps
    end
  end
end
