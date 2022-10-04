module ApplicationHelper
    def mes_dia(datetime)
        datetime.strftime('%e %B')
    end

    def mes_dia_curto(datetime)
        datetime.strftime('%e %b')
    end

    def so_ano(datetime)
        datetime.strftime('%Y')
    end

    def hora_minuto(datetime)
        datetime.strftime('%Hh:%M')
    end
end
