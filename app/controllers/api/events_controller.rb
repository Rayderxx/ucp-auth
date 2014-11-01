class Api::EventsController < Api::ApiController
    def index
         render json: current_user.recent_promotion.events, each_serializer: EventAdminSerializer, root: false
    end
end