require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "doesn't save user without email" do
    user = User.new
    assert_not user.save, "Saved article without title"
  end  

  test "doesn't save user without unique email" do
    current_email = User.all.first.email
    user = User.new
    user.email = current_email
    assert_not user.save, "Saved article without title"
  end

end
