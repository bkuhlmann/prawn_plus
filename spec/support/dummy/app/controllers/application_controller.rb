# frozen_string_literal: true

# The application controller.
class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery with: :exception
end
