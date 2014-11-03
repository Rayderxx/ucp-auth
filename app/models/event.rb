class Event < ActiveRecord::Base
    scope :available_events, -> { includes(:admin).where("? BETWEEN date_start AND date_end", Time.zone.now).order("date_start")}
    belongs_to :promotion
    belongs_to :admin
    has_many :timesheets
end
