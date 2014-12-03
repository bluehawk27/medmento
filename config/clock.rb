require_relative "../config/boot"
require_relative "../config/environment"

require 'clockwork'
require 'clockwork/database_events'

module Clockwork

  Clockwork.manager = DatabaseEvents::Manager.new
  sync_database_events model: ClockworkEvent, every: 10.seconds do |model_instance|

    # if frequency == Time.now
    TwilioWorker.perform_async#(model_instance.phone)
  end

end
  # every(1.day, "twilio_call.job", at: "9:00") { TwilioWorker.perform_async }