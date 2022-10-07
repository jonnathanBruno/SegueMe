module MountingCirclesHelper
    def existeCirculo?(id)
        @existeCirculo = Mounting.buscar_existe_circulo(id)
        @existeCirculo.present?
    end

    def buscarFuncaoCirculo(id, funcao)
        @funcao = Mounting.buscar_funcao_circulo(id, funcao)
        @funcao.present?
    end
end
