class ApplicationController < ActionController::Base
    protect_from_forgery     
    rescue_from CanCan::AccessDenied do |exception|
        redirect_to root_url, :alert => exception.message
    end
    #====================================Create session and users============================#
    skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }
    skip_before_action :verify_authenticity_token, if: -> { controller_name == 'registrations' && action_name == 'create' }
   
end
