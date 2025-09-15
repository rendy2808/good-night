class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :validate_api_key

  private

  def validate_api_key
    api_key = request.headers['X-API-KEY']
    valid_key = 'key-12345' # Or ENV['API_KEY'], for technical test purpose only

    render json: { error: 'Unauthorized' }, status: :unauthorized unless api_key == valid_key
  end
end
