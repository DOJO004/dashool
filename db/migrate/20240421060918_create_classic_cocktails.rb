class CreateClassicCocktails < ActiveRecord::Migration[7.1]
  def change
    create_table :classic_cocktails, id: :uuid do |t|
      t.string :name
      t.string :skill
      t.string :garnish
      t.string :glass
      t.text :history
      t.text :ingredient
      t.text :method

      t.timestamps
    end
  end
end
