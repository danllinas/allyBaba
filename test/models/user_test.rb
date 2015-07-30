require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com", address: "1234 W Wyncode Lane", city: "Miami", state: "FL")
    @user.password = "foobar"
    @user.password_confirmation = "foobar"
    p @user.valid?
    p @user.errors.messages
    @user.save
  end

  test "should be valid" do
    assert @user.valid?
  end

end
