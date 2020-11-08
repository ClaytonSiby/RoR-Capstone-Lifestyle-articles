class AddAuthorIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :author_id, :integer, index: true
  end
end
