require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "User must have name and email" do
    user1 = User.new(name: "Juan", email: "foo@bar.baz")
    user2 = User.new(name: "Rosa")
    user3 = User.new(email: "bar@foo.baz")

    assert user1.save
    assert !user2.save, "user saved without email!"
    assert !user3.save, "user saved without name!"
  end

  test "User can have feeds" do
    assert users(:user).respond_to?(:feeds)
  end

  test "User can add feeds" do
    smittenfeed = Feed.new(url: 'http://feeds.feedburner.com/smittenkitchen',
                            user_id: user.id)
    users(:user).feeds << smittenfeed
    assert user.feeds.contains?(smittenfeed), "#{users[:user].name} can't see smittenfeed"
  end

  test "User can see own feeds" do
    flunk "user can't see own feeds"
  end

  test "User can't see others' feeds" do
    flunk "user can see others' feeds"
  end

  test "User must be logged in to see feeds" do
    flunk "Who can see feeds anyway?"
  end

end
