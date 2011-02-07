class AddDateToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :date, :datetime
  end

  def self.down
    remove_column :blogs, :date
  end
end
