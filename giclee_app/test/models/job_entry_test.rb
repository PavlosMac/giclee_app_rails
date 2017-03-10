require 'test_helper'
require 'active_support/core_ext/module/delegation'

module Shoulda
  module Matchers
    module ActiveRecord
      
class JobEntryTest < ActiveSupport::TestCase

  def setup
   @job_entry = JobEntry.new( material: "Ashgrove suilven", size_width: 42, size_height: 12, units: 'in',
       runs: 1, prints: 1, margin: 0, per_print: 0, discount: 0.05, price: 34.20,
       originals: 1)
 end


should has_many(:chargeables)


  test "materials" do
    assert_equal "Ashgrove suilven", @job_entry.material
  end
end
