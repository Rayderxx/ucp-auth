class Api::Admin::PresencesController < Api::Admin::AdminController
    
    def index
        render json: current_user.events.available_events, serialize: "EventSerializer", root: false
    end

    def is_present
        present = Timesheet.where(event_id: params[:event_id], student_id: params[:student_id])
        render json: present.length > 0
    end
end