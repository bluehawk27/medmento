module Api
  module V1
    class EventsController < ApplicationController
      respond_to :json

      def index
        respond_with Event.all
      end

      def create
        @user = Event.create(event_params)
        respond_with @user do |format|
          format.json { render json: @user.to_json }
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
        params.require(:event).permit(:name, :drug_name, :message, :patient_number, :secondary_number, :third_number, :start_date, :end_date, :alert_time)
      end
    end
  end
end
