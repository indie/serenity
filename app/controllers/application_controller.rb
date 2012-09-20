class ApplicationController < ActionController::Base
  layout "application"
  protect_from_forgery
  include SessionsHelper
end


