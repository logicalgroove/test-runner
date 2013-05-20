require_relative '../tester.rb'
require 'timecop'

RSpec.configure do |config|
  config.after(:each) do
    Timecop.return
  end
end
