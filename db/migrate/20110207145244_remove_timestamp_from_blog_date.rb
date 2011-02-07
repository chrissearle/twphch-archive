class RemoveTimestampFromBlogDate < ActiveRecord::Migration
  def self.up
    change_column :blogs, :date, :date
  end

  def self.down
    change_column :blogs, :date, :datetime
  end
end
