class EventSerializer < ActiveModel::ArraySerializer
    attributes :id, :date_start, :date_end, :description, :type
end
