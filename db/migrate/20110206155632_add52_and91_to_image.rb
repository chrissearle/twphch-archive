class Add52And91ToImage < ActiveRecord::Migration
  def self.up
    add_column :images, :first_rank, :integer, :default => 0
    add_column :images, :first_votes, :integer, :default => 0
    add_column :images, :best_rank, :integer, :default => 0
    add_column :images, :best_votes, :integer, :default => 0
  end

  def self.down
    remove_column :images, :first_rank
    remove_column :images, :first_votes
    remove_column :images, :best_rank
    remove_column :images, :best_votes
  end
end
