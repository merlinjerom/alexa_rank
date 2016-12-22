class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  # before_filter :check_user
  #
  # def check_user
  #   sign_out current_user if current_user && current_user.disabled?
  # end
end
