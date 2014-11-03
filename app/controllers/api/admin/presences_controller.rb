class Api::Admin::PresencesController < Api::Admin::AdminController
    
    def index
        render json: Event.where(admin: current_user).available_events, serialize: "EventSerializer", root: false
    end

    def is_present
        present = Timesheet.where(event_id: params[:event_id], student_id: params[:student_id])
        render json: present.length > 0
    end

    def change_present
        if params[:state] == "false"
            Timesheet.create(event_id: params[:event], student_id: params[:id])
        else
            Timesheet.where(event_id: params[:event], student_id: params[:id]).first.destroy
        end

        render json: true
    end
end