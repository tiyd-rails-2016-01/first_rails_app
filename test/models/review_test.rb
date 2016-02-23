require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  test "the best score" do
    Review.create!(stars: 0)
    Review.create!(stars: 2)
    Review.create!(stars: 33455)

    assert_equal 33455, Review.best.stars
  end

  # def test_more_truth
  #   refute false
  # end
end
