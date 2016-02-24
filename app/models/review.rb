class Review < ActiveRecord::Base
  belongs_to :restaurant

  def self.best
    order(:stars).last
  end

  def as_json(options = nil)
    {id: id,
     stars: stars,
     comments: comments}
  end
end
