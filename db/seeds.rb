# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Kind.create(description: "Titular")
# Kind.create(description: "Reserva")
# Kind.create(description: "Banco")

Acesso.create(nivel:"1")
Acesso.create(nivel:"2")
User.create(email: "will@gmail.com", password: "123123", password_confirmation: "123123",acesso_id:1)

strings = ['jogador 1', 'jogador 2', 'jogador 3']
strings_2 = ['Dev 1', 'Dev 2', 'Dev 3']
strings_3 = [true,false]
100.times do |i|
    selected_string = strings.sample
    selected_string_2 = strings_2.sample
    selected_string_3 = strings_3.sample
    random_number = Random.rand(1..100)
    random_number_2 = Random.rand(1..100)
    random_number_3 = Random.rand(1..100)
    random_number_4 = Random.rand(1..100)
    Band.create(
        name: selected_string,
        idade:random_number,
        cargo:selected_string_2,
        valor:random_number_2,
        habilitado:selected_string_3,
        valor_1:random_number_3,
        valor_2:random_number_4
    ) 
end

# Acesso.create(nivel:"2")