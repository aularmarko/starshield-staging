# frozen_string_literal: true

module AdminUsers
  class SessionsController < ::Devise::SessionsController
    layout 'active_admin_logged_out'
    helper ::ActiveAdmin::ViewHelpers

    def after_sign_in_path_for(_resource)
      admin_dashboard_path
    end

    def after_sign_out_path_for(_resource)
      new_user_session_path
    end

    def create
      user = User.find_by(username: sign_in_params[:username])
      if user&.valid_password?(sign_in_params[:password])
        if user.admin?
          detect_privileges(user)
          super
        else
          @user = user || User.new
          flash[:error] = 'User is not set as a administrator. Please contact the system administrator'
          redirect_to new_user_session_path
        end
      else
        @user = user || User.new
        flash[:error] = 'Invalid credentials'
        redirect_to new_user_session_path
      end
    end

    private

    def detect_privileges(user)
      session[:desktop] = request.user_agent.eql?('SSA\ Browser')
      return if session[:desktop]

      session[:privileges] = 'Admin' if user&.admin?
      session[:privileges] = 'KitsAdmin' if user&.kits_admin?
      session[:privileges] = 'SuperAdmin' if user&.super_admin?
      session[:privileges] ||= 'User'
    end
  end
end
