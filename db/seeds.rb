p "iniciando...."

150.times do
    Follower.create!(
        name: "Seguidor Fulano de Tal #{rand(1..1000)}",
        email: "seguidor@gmail.com",
        birth: rand(365).days.ago,
        address: "endereço de teste, nº 20",
        type_date: "Seguidor",
        parish_id: 1,
        contact: "(84) 99182-8410"
    )
end


p "terminou!"
