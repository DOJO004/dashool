class CreateCollects < ActiveRecord::Migration[7.1]
  def change
    create_table :collects, id: :uuid do |t|
      t.references :profile, null: false, foreign_key: true, type: :uuid
      t.references :user, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
    add_index :collects, [:user_id, :profile_id], unique: true
  end
end
