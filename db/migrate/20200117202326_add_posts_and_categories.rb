class AddPostsAndCategories < ActiveRecord::Migration[5.0]
  def self.up
    create_table :categories_posts do |t|
      t.references :category, :post
    end
  end

  def self.down
    drop_table :categories_posts
  end
end
