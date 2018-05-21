class AddOwnerToArticle < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :user
    add_reference :articles, :user, foreign_key: true
  end
end
