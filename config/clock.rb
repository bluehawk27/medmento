require_relative "../config/boot"
require_relative "../config/environment"

require 'clockwork'
require 'clockwork/database_events'

module Clockwork



  Clockwork.manager = DatabaseEvents::Manager.new
  sync_database_events model: ClockworkEvent, every: 1.minute do |model_instance|

    if frequency == Time.now
    TwilioWorker.perform_async(model_instance.phone)
  end


end
  # every(1.minutes, "twilio_call.job") { TwilioWorker.perform_async }
