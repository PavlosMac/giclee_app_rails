require 'test_helper'

class JobDEntryTest < ActiveSupport::TestCase

  def setup
   @job_entry = JobEntry.new( material: "Ashgrove suilven", size_width: 42, size_height: 12, units: 'in',
       runs: 1, prints: 1, margin: 0, per_print: 0, discount: 0.05, price: 34.20,
       originals: 1)
 end


  test "materials" do
    assert_equal 2,
  end
end
