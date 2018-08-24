class AddAddressToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :address, :text
  end
end
