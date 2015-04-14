class ApplicationController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    protect_from_forgery with: :exception

    #rescue_from ActiveRecord::RecordNotFound, :with => :render_404

    include SessionsHelper

    # Force signout to prevent CSRF attacks
    def handle_unverified_request
        sign_out
        super
    end
end
