p "iniciando...."

4.times do
    Parish.create!(
        nome_paroquia: "Paróquia #{rand(10.000)}"
    )
end

p "terminou!"
