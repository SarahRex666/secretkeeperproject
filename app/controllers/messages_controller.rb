class MessagesController < ApplicationController
        skip_before_action :authenticate_user
        skip_before_action :verify_authenticity_token


    
    def index
        messages = Message.all
        render json: messages
    end

    def show
        message = Message.find_by(id: params[:id])
        render json: message
    end

    def create
        message = Message.create(message_params)
        render json: message, status: :created
    end

    def destroy
        message = Message.find_by(id: params[:id])
        message.destroy
        render json: Message.all
    end

    private 

    def message_params
        params.permit(:id, :user_id, :message)
    end
end
