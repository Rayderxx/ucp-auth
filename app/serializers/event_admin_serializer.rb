class EventAdminSerializer < ActiveModel::Serializer
    attributes :id, :date_start, :date_end, :description
    def date_start
        object.date_start.strftime("%Y-%m-%d %H:%M:%S")
    end

    def date_end
        object.date_end.strftime("%Y-%m-%d %H:%M:%S")
    end
end
