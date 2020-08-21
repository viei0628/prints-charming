class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :is_owner, :rating])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address, :is_owner, :rating])
  end

  def user_not_authorized
     flash[:alert] = "You are not authorized to perform this action."
     redirect_to(root_path)
  end

  def after_sign_in_path_for(resource)
    if resource.is_owner
      my_bookings_path(resource)
    else
      printers_path
    end

  end
end
