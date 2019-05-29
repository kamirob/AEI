class ApplicationController < ActionController::Base

    #====================================Create session and users============================#
    protect_from_forgery 
    skip_before_action :verify_authenticity_token, if: -> { controller_name == 'sessions' && action_name == 'create' }
    skip_before_action :verify_authenticity_token, if: -> { controller_name == 'registrations' && action_name == 'create' }
end
