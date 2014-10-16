module Api
    class EventsController < ApiController
        def index
             render json: current_user.recent_promotion.events, root: false
        end
    end
end