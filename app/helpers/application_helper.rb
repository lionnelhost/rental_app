module ApplicationHelper

    def display_date(date, format)
        date.nil? ? '': l(date, format: format)
    end
end
