class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_paramters, if: :devise_controller?

  	protected
  		def configure_permitted_paramters
  		  devise_parameter_sanitizer.for(:sign_up) << :fullname
  		  devise_parameter_sanitizer.for(:account_update) << :fullname << :description << :email << :name_kanji_first << :name_kanji_second << :name_kana_first << :name_kana_second << :sex << :move_at << :moved_at << :move_to_postnumber << :move_to_address << :password
  		end
end
