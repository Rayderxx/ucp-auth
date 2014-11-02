class Student < User
    has_many :timesheets

    def already_sign(event)

        if self.timesheets.where(event: event).count > 0
            true
        else
            false
        end
    end

    def store_sign(event)
        self.timesheets << Timesheet.new(student: self, event: event)
        self.save
    end
end