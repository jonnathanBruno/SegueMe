p "iniciando...."

4.times do
    Parish.create!(
        nome_paroquia: "Paróquia #{rand(10.000)}"
    )
end

10.times do
    Team.create!(
        nome_equipe: "Equipe #{rand(10.000)}",
        qnt_componente: 10
    )
end

p "terminou!"
