module ApplicationHelper
    def mes_dia(datetime)
        datetime.strftime('%e %B')
    end

    def mes_dia_curto(datetime)
        datetime.strftime('%e %b')
    end
end
