class AddWhoppersToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :whoppers, :float
  end
end
