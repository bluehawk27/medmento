module Api
  module V1
    class EventsController < ApplicationController
      respond_to :json

      def index
        respond_with Event.all
      end

      def create
        @event = Event.create(event_params)
        respond_with @event do |format|
          format.json { render json: @event.to_json }
        end
      end

      def show
        respond_with Event.find(params[:id])
      end

      def update
        respond_with Event.update(params[:id], event_params)
      end

      def destroy
        respond_with Event.destroy(params[:id])
      end

      private
      def event_params
        params.permit(:patient_name, :drug_name, :message, :patient_number, :frequency_quantity, :frequency_period, :at)
      end
    end
  end
end
