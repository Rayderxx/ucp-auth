class Api::EventsController < Api::ApiController
    def index
         render json: current_user.recent_promotion.events
    end
end