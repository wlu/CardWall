class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
    raise 'error'
  end
end
