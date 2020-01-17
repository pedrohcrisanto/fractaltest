class AddPostToCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :categories, :post, foreign_key: true
  end
end
