class PresencesController < ApplicationController
    def scan
        student = Student.find(params[:id])
        event = student.recent_promotion.events.available_events.first
        if event.nil? || student.already_sign(event)
            render json: false
        else
            student.store_sign(event)
            render json: true
        end
    end
end