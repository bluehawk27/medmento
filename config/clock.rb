require_relative "../config/boot"
require_relative "../config/environment"

require 'clockwork'
require 'clockwork/database_events'

module Clockwork

  every(1.minutes, "twilio_call.job") { TwilioWorker.perform_async }


  # p "yo"
  # p Clockwork.manager = Events::Manager.new
  # p "mo"
  # sync_database_events model: ClockworkEvent, every: 1.minute do |model_instance|

  #   p "no"
  #   TwilioWorker.perform_async
  # end


end