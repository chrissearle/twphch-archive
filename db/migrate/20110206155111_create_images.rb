# coding: UTF-8

class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :fid
      t.string :owner_fid
      t.integer :votes
      t.integer :rank
      t.integer :challenge_id

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
