module ApplicationHelper
    def mes_dia_ano(datetime)
        l(datetime, format:'%e %b %y')
    end

    def mes_dia_ano_completo(datetime)
        l(datetime, format:'%e %B %Y')
    end

    def mes_dia(datetime)
        l(datetime, format:'%e %B')
    end

    def mes_dia_curto(datetime)
        l(datetime, format:'%e %b')
    end

    def so_ano(datetime)
        l(datetime, format:'%Y')
    end

    def hora_minuto(datetime)
        l(datetime, format:'%HH%M')
    end

    def render_if(template, condition)
        render template if condition
    end

    def maiuscula(texto)
        texto.upcase
    end

    def existeCirculo?(id)
        @existeCirculo = Mounting.buscar_existe_circulo(id)
        @existeCirculo.present?
    end
end
