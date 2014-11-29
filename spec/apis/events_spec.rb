# require 'rails_helper'

describe "API" do
  it 'sends a list of events' do
    # FactoryGirl.create_list(:event, 10)
    Event.create(name: 'grandpa')

    get '/api/v1/events'

    expect(response).to be_success            # test for the 200 status-code
    json = JSON.parse(response.body)
    expect(json['events'].length).to eq(1) # check to make sure the right amount of events are returned
  end
end
