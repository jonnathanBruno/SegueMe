module MountingTeamsHelper
    def buscarMountingsEspecificosEquipe(valor)
        @mountings = Mounting.buscar_montagem_de_equipes(valor)
    end

    def teste()
        true
    end

    def existeFuncao?(team, funcao)
        @funcoesPresente = Mounting.buscar_existe_funcao(team, funcao)
        @funcoesPresente.present?
    end

    def mountingsEquipeJovemCoordenador(valor)
        @mountings = Mounting.buscar_montagem_de_equipes_jovemCoordenador(valor)
    end
end
