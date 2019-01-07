class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def application
  COURSES = Course.first
  # end
end
