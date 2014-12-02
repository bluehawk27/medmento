class TwilioWorker
  include Sidekiq::Worker

  BASE_URL = "http://2c253d0d.ngrok.com/appointmentreminder"
  # BASE_URL = "http://localhost:3000/appointmentreminder"
  CALLER_NUM = '+14083735458'

  def perform
    data = {
      "from" => CALLER_NUM,
      "to" => "7034709608",
      "url" => BASE_URL + '/reminder',
    }

    client = Twilio::REST::Client.new(ENV["ACCOUNT_SID"], ENV["AUTH_TOKEN"])
    client.account.calls.create(data)
    p "*" * 70
  end
end