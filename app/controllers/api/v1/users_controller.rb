module Api
  module V1
    class UsersController < ApplicationController
      respond_to :json

      def create
        p params
        p "create" * 10
        p user_params
        @user = User.create(user_params)
        respond_with @user do |format|
          format.json { render json: @user.to_json }
          p "createdddddd" * 10
        end
        p "out of created" * 10
      end

      def show
        respond_with User.find(params[:id])
      end

      def update
        respond_with User.update(params[:id], user_params)
      end

      def destroy
        respond_with User.destroy(params[:id])
      end

      private
        def user_params
          params.require(:user).permit(:first_name, :last_name, :email)
        end

    end
  end
end
