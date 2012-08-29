# require nagios steps (see https://github.com/auxesis/cucumber-nagios/tree/v0.9.2/lib/cucumber/nagios/steps) 
require 'cucumber/nagios/steps'

# Suppress logs being written to ./webrat.log
module Webrat
  module Logging
    def logger
      nil
    end
  end
end

World do
  Webrat::Session.new(Webrat::MechanizeAdapter.new)
end