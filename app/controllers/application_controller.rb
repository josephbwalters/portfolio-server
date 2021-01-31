class ApplicationController < ActionController::Base
  protect_from_forgery

  before_action :require_login, except: [:not_authenticated]

  protected

  def not_authenticated
    puts 'No Auth'
  end
end
