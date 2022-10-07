p "iniciando...."

    Parish.create!(
        name: "Paróquia de Sant'Ana e São Joaquim"
    )

    Parish.create!(
        name: "Paróquia de Santo Afonso"
    )

    Parish.create!(
        name: "Paróquia de Nísia"
    )

    Circle.create!(
        color: "Vermelho"
    )

    Circle.create!(
        color: "Verde"
    )

    Circle.create!(
        color: "Azul"
    )

    Circle.create!(
        color: "Amarelo"
    )

    Circle.create!(
        color: "Rosa"
    )

    Circle.create!(
        color: "Laranja"
    )

    60.times do
        Follower.create!(
            name: "Seguidor Fulano de Tal #{rand(10.000)}",
            email: "seguidor@gmail.com",
            birth: rand(365).days.ago,
            address: "endereço de teste, nº 20",
            type_date: "Seguidor",
            parish_id: 1,
            contact: "(84) 99182-8410"
        )
    end

    60.times do
        Participant.create!(
            name: "Seguimista Fulano de Tal #{rand(10.000)}",
            email: "seguimista@gmail.com",
            birth: rand(365).days.ago,
            address: "endereço de teste, nº 20",
            surname: "Seguimista",
            type_date: "Seguimista",
            parish_id: 1,
            contact: "(84) 99182-8410"
        )
    end

    16.times do
        Speaker.create!(
            name: "Palestrante Fulano de Tal #{rand(10.000)}",
            email: "palestrante@gmail.com",
            birth: rand(365).days.ago,
            address: "endereço de teste, nº 20",
            type_date: "Palestrante",
            parish_id: 1,
            contact: "(84) 99182-8410"
        )
    end

p "terminou!"
