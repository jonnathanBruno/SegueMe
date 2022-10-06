module MountingTeamsHelper
    def buscarMountingsEspecificosEquipe(valor)
        @mountings = Mounting.buscar_montagem_de_equipes(valor)
    end

    def existeFuncao?(team, funcao)
        @funcoesPresente = Mounting.buscar_existe_funcao(team, funcao)
        @funcoesPresente.present?
    end

    def montagemPalestras(valor)
        @mountingLectures = Mounting.montagem_palestras(valor)
    end
end
