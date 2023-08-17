class NotificationsController < ApplicationController
    skip_before_action :verify_authenticity_token, raise: false
    before_action :authenticate_jwt, only: [:receive]
    
    def receive  
      data = JSON.parse(request.body.read)
      render json: { success: true, message: "Data received" }, status: :ok
    end

  private

  def authenticate_jwt
    jwt_secret = ENV['jwt_secret']
    token = request.headers["Authorization"]&.split('Bearer ')&.last
    begin
      decoded_token = JWT.decode(token, jwt_secret, true, { algorithm: 'HS256' })
    rescue JWT::DecodeError => e
      render json: { error: 'Unauthorized: Invalid token.' }, status: :unauthorized
    end
  end
end
  