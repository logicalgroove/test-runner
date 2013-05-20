require 'spec_helper'

describe Tester do
  before :each do
    @tester = Tester.new '/home/pair/work/test-runner/'
  end

  it 'check every minute for new branches' do
    time_now = Time.now
    expexted_time = time_now + 10*60
    Timecop.travel time_now + 15*60
    @tester.last_check.should eq expected_time
  end

  it 'returns list of new branches' do
    @tester.branches.should_not be_nil
    puts @tester.branches
  end

  

end
