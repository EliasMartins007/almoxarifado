class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception # tutorial udemy

    include SessionsHelper
end
