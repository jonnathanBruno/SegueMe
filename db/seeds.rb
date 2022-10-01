p "iniciando...."

30.times do
    Follower.create!(
        name: "Seguidor #{rand(10.000)}",
        email: "teste@gmail.com",
        age: 20,
        address: "endereço de teste, nº 20",
        type_date: "Seguimista",
        parish_id: 1
    )

    follower = Follower.last
    Contact.create!(
        contact: "(84) 99183-4526",
        follower_id: follower.id
    )

end

30.times do
    Follower.create!(
        name: "Seguidor #{rand(10.000)}",
        email: "teste@gmail.com",
        age: 20,
        address: "endereço de teste, nº 20",
        type_date: "Seguidor",
        parish_id: 1
    )

    follower = Follower.last
    Contact.create!(
        contact: "(84) 99183-4526",
        follower_id: follower.id
    )
end

p "terminou!"
