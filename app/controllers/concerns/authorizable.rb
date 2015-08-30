module Authorizable
    def require_admin
      redirect_to root_path, alert: 'Sorry, you do not have access to that.' and return unless current_user && current_user.is_admin?
    end
end
