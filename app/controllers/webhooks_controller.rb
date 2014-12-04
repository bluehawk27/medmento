require 'rubygems'
require "twilio-ruby"

class WebhooksController < ApplicationController

  # BASE_URL = "http://7b6048b8.ngrok.com/webhooks"

  def reminder
    p phone_num = params["Called"][2..-1]

    p @post_to = "#{ENV['BASE_URL']}/log_pain"
    p @event = ClockworkEvent.find_by(patient_number: phone_num)

    render "reminder.xml.builder", :layout => false

  end


  def log_pain
    pain_rating = params['Digits']
    phone_num = params["Called"][2..-1]
    event = ClockworkEvent.find_by(patient_number: phone_num)

    @new_pain_rating = PainRating.new(rating: pain_rating, clockwork_event_id: event.id)

    if @new_pain_rating.save
      render "thank_you_goodbye.xml.builder", :layout => false
    else
      # need to create a separate xml view for rating
      @redirect_to = "#{ENV['BASE_URL']}/reminder"
      render "invalid_num.xml.builder", :layout => false
    end

  end
end