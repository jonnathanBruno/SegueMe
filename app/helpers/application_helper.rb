module ApplicationHelper
    def mes_dia_ano(datetime)
        datetime.strftime('%e %b %y')
    end

    def mes_dia_ano_completo(datetime)
        datetime.strftime('%e %B %Y')
    end

    def mes_dia_curto(datetime)
        datetime.strftime('%e %b')
    end

    def so_ano(datetime)
        datetime.strftime('%Y')
    end

    def hora_minuto(datetime)
        datetime.strftime('%HH%M')
    end

    def render_if(template, condition)
        render template if condition
    end
end
