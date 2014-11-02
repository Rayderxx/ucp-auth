class EventSerializer < ActiveModel::Serializer
    embed :ids
    attributes :id, :date_start, :date_end, :description, :students
    delegate :current_user, :to => :scope

    def students
        object.promotion.users
    end

    def date_start
        object.date_start.strftime("%d/%M/%Y de %H:%M:%S")
    end

    def date_end
        object.date_end.strftime("à %H:%M:%S")
    end
end
