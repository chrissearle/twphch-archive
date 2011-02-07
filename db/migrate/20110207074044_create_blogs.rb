class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.string :body
      t.string :fid
      t.integer :category_id

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
