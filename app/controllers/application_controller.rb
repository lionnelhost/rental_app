class ApplicationController < ActionController::Base
    include Paginable
    layout :resolve_layout
    before_action :authenticate_user!
    before_action :set_locale


    def after_sign_out_path_for(user)
        login_path
    end

    def after_sign_in_path_for(user)
        dashboard_path
    end

    private
    def set_locale
      I18n.locale = I18n.default_locale
    end

    def resolve_layout
        if devise_controller?
        'authentication'
        else
        'dashboard'
        end
    end
end
