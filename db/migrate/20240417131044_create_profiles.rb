class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles, id: :uuid do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.text :descript
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end
end
