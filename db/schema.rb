# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110208215043) do

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.text     "body",        :limit => 255
    t.string   "fid"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  add_index "blogs", ["category_id"], :name => "index_blogs_on_category_id"

  create_table "categories", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "challenges", :force => true do |t|
    t.string   "tag"
    t.string   "title"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "title"
    t.string   "content"
    t.string   "author"
    t.string   "email"
    t.datetime "postdate"
    t.integer  "blog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["blog_id"], :name => "index_comments_on_blog_id"

  create_table "images", :force => true do |t|
    t.string   "fid"
    t.string   "owner_fid"
    t.integer  "votes"
    t.integer  "rank"
    t.integer  "challenge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "first_rank",   :default => 0
    t.integer  "first_votes",  :default => 0
    t.integer  "best_rank",    :default => 0
    t.integer  "best_votes",   :default => 0
  end

  add_index "images", ["challenge_id"], :name => "index_images_on_challenge_id"

end
