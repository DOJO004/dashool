class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments, id: :uuid do |t|
      t.text :messages
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :cocktail, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
