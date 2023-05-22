require "test_helper"

class ArtsmailerMailerTest < ActionMailer::TestCase
  test "newart" do
    mail = ArtsmailerMailer.newart
    assert_equal "Newart", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
