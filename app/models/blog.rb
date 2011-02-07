class Blog < ActiveRecord::Base
  belongs_to :category
  has_many :comments

  scope :ordered, order(:date)
end
