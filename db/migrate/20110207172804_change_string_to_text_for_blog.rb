class ChangeStringToTextForBlog < ActiveRecord::Migration
  def self.up
    change_column :blogs, :body, :text
  end

  def self.down
    change_column :blogs, :body, :string
  end
end
