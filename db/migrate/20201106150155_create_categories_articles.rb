class CreateCategoriesArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :categories_articles do |t|
      t.references :article, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
