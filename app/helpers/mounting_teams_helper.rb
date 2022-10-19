require "time"


module MountingTeamsHelper
    def buscarMountingsEspecificosEquipe(valor)
        @mountings = Mounting.buscar_montagem_de_equipes(valor)
    end

    def existeFuncao?(team, funcao)
        @time = Time.new
        @funcoesPresente = Mounting.buscar_existe_funcao(team, funcao, "2016")
        @funcoesPresente.present?
    end

    def existeFuncaoGeral?(team, funcao, ano)
        @funcoesPresente = Mounting.buscar_existe_funcao_geral(team, funcao, ano)
        @funcoesPresente.present?
    end

    def montagemPalestras(valor)
        @mountingLectures = Mounting.montagem_palestras(valor)
    end
end
