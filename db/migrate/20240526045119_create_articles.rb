class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title
      t.string :category

      t.timestamps
    end
  end
end
