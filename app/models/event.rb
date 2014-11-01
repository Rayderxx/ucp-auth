class Event < ActiveRecord::Base
    include ActiveModel::Serialization
    include ActiveModel::SerializerSupport
    scope :available_events, -> { includes(:admin).where("? BETWEEN date_start AND date_end", Time.now).order("date_start")}
    belongs_to :promotion
    belongs_to :admin
    has_many :timesheets
end
