class Api::ApiController < ApplicationController
    acts_as_token_authentication_handler_for User, except: [:create_user]
    protect_from_forgery with: :null_session, :if => Proc.new { |c| c.request.format == 'application/json' }
end
