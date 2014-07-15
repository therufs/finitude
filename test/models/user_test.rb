require 'test_helper'

class UserTest < ActiveSupport::TestCase

  setup do
    user = User.new(name: "Roberta", email: "roberta@foo.bar")
  end

  test "User must have name and email" do
    user1 = User.new(name: "Juan", email: "foo@bar.baz")
    user2 = User.new(name: "Rosa")
    user3 = User.new(email: "bar@foo.baz")

    assert user1.save
    assert !user2.save, "user saved without email!"
    assert !user3.save, "user saved without name!"
  end

end
