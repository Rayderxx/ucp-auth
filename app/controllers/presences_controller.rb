class PresencesController < ApplicationController
    def scan
        u = User.where(ine_student: params[:id]).first
        if u
            render json: true
        else
            render json: false
        end

    end
end