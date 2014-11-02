class Api::Admin::EventsController < Api::Admin::AdminController
    def index
        render json: Event.all, each_serializer: EventAdminSerializer
    end

    def create
        event = Event.new(
            admin: current_user,
            promotion: Promotion.first,
            description: params["description"],
            date_start: "#{params['dateStart']} #{params['timeStart']}",
            date_end: "#{params['dateEnd']} #{params['timeEnd']}",
        )
        event.save
        render json: event, serializer: EventAdminSerializer
    end

    def update
        e = Event.find(params[:id]);
        e.date_start = "#{params['dateStart']} #{params['timeStart']}"
        e.date_end = "#{params['dateEnd']} #{params['timeEnd']}"
        e.description =  params["description"]
        e.save
        render json: e, serializer: EventAdminSerializer
    end

    def destroy_event
        e = Event.find(params["params"])
        e.destroy
        render json: {
                destroy: true
            }
    end
end