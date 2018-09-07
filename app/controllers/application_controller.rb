class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?


    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :first_name, :last_name, :birthdate, :username)}
        end


    private
  
    def layout_by_resource
        if devise_controller?
            "devise"
        else
            "application"
        end
    end

end
