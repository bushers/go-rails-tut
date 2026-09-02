require "test_helper"

class JobTest < ActiveSupport::TestCase
  test "validates apply url or email is present" do
    job = Job.new apply_url: "https://example.com/apply"
    job.valid?
    assert_empty job.errors[:base]

    job = Job.new apply_email: "example@example.com"
    job.valid?
    assert_empty job.errors[:base]

    job = Job.new
    job.valid?
    assert_includes job.errors[:base], "Must have either an application URL or email"
  end
end