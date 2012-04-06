require 'test_helper'

class StoryPageTest < ActiveSupport::TestCase
  test "should be able to get the next row" do
    @results = StoryPage.all
    @next_row = @results[0].next
    assert_equal 10, @next_row.wl
  end
end
