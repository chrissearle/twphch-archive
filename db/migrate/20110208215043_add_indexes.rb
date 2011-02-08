class AddIndexes < ActiveRecord::Migration
  def self.up
    add_index :blogs, :category_id
    add_index :comments, :blog_id
    add_index :images, :challenge_id
  end

  def self.down
    remove_index :blogs, :category_id
    remove_index :comments, :blog_id
    remove_index :images, :challenge_id
  end
end
