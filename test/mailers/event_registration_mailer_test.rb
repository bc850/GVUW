require 'test_helper'

class EventRegistrationMailerTest < ActionMailer::TestCase
  test "new_event_registration" do
    mail = EventRegistrationMailer.new_event_registration
    assert_equal "New event registration", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
