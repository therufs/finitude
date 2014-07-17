require 'test_helper'

class FeedTest < ActiveSupport::TestCase

  test "feed saves when it has name, url, and user id" do
    feed = Feed.new(name: "Smitten Kitchen", url:
            'http://feeds.feedburner.com/smittenkitchen', user_id: 1)

    assert feed.save, "Feed 1 didn't save"
  end

  test "feed doesn't save without name, url, and user id" do
    feed = Feed.new
    assert !feed.save, "Feed saved without adequate info"
  end

end
