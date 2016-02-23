class Review < ActiveRecord::Base
  belongs_to :restaurant

  def self.best
    order(:stars).last
  end
end
