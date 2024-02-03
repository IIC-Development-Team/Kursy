class ApplicationController < ActionController::Base
    def after_sign_out_path_for(scope)
        root_path
    end

    before_action :configure_permitted_parameters, if: :devise_controller?
    

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :current_password)}
        devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation)} 
    end

    def update_resource(resource, params)
        resource.update_without_password(params)
    end
end
