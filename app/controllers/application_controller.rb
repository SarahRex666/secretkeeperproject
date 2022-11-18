class ApplicationController < ActionController::Base
    include ActionController::Cookies
    before_action :authenticate_user
    skip_before_action :verify_authenticity_token
  
      private 
  
      def current_user
          @current_user ||= User.find_by_id(session[:user_id])
      end
  
  
      def authenticate_user
      return render json: {error: "Not Authorized!!"},status: :forbidden unless session.include? :user_id
      end
      
end
