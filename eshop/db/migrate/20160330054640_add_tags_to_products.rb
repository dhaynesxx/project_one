class AddTagsToProducts < ActiveRecord::Migration
  def change
    add_column :products, :tags, :text
  end
end
