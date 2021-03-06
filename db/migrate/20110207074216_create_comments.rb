class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :title
      t.string :content
      t.string :author
      t.string :email
      t.datetime :postdate
      t.integer :blog_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
