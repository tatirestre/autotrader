require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "new_vehicle_confirmation" do
    mail = UserMailer.new_vehicle_confirmation
    assert_equal "New vehicle confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "vehicle_update" do
    mail = UserMailer.vehicle_update
    assert_equal "Vehicle update", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
