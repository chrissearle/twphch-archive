class Image < ActiveRecord::Base
  belongs_to :challenge

  def self.get_first_for_rank(rank)
    Image.find_all_by_first_rank(rank)
  end
end
