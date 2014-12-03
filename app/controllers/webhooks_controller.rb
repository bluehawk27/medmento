require 'rubygems'
require "twilio-ruby"

class WebhooksController < ApplicationController

  BASE_URL = "http://7b6048b8.ngrok.com/webhooks"

  def reminder
    # @user = User.find_by(number: params[:number])
    # p "8" * 70
    p phone_num = params["Called"][2..-1]
    # p "8" * 70

    @post_to = BASE_URL + '/directions'
    p @event = ClockworkEvent.find_by(patient_number: phone_num)
    # p "8" * 70

    render "reminder.xml.builder", :layout => false
    # render :action => "reminder.xml.builder", :layout => false

  end

  def directions
    if params['Digits'] == '3'
      redirect_to :action => 'goodbye'
      return
    end

    if !params['Digits'] or params['Digits'] != '2'
      redirect_to :action => 'reminder'
      return
    end

    @redirect_to = BASE_URL + '/reminder'
    render :action => "directions.xml.builder", :layout => false
  end

end