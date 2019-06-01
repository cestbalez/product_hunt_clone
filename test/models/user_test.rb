require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "#full_name return the capitalized first name and last name" do
    user = User.new(first_name: 'jan', last_name: 'lennon')
    assert_equal "Jan Lennon", user.full_name
  end

  test "#full_name should not crash if first_name is nil" do
    user = User.new(last_name: 'lennon')
    assert_equal "Lennon", user.full_name
  end
end
