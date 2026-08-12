class ApplicationController < ActionController::Base
  layout :layout_by_resource

  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
  before_action :authenticate_user!

  protected

  def layout_by_resource
    devise_controller? ? "auth" : "application"
  end
end
