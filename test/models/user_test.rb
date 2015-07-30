require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(first_name: "Example", last_name: "User", email: "user@example.com", password: 'foobar', password_confirmation: 'foobar', address: "1234 W Wyncode Lane", city: "Miami", state: "FL")
  end

  test "should be valid" do
    assert @user.valid?
  end

end
