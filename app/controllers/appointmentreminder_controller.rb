require 'rubygems'
require "twilio-ruby"

class AppointmentreminderController < ApplicationController
  include AppointmentreminderHelper

  def index
    # delete this action and associated view
    render "You hit index"
  end

  def test
    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

end

# BASE_URL = "http://2c253d0d.ngrok.com/appointmentreminder"

# CALLER_NUM = '+14083735458'
# data = {
#       :from => CALLER_NUM,
#       :to => '+17034709608',
#       :url => BASE_URL + '/reminder',
#     }
#       client = Twilio::REST::Client.new(ACCOUNT_SID, ACCOUNT_TOKEN)
#       client.account.calls.create data
