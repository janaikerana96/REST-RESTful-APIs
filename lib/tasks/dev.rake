namespace :dev do
  desc "Configurando o ambiente de Desenvolvimento"
  task setup: :environment do
  puts "Cadastrando os contactos ..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birtdate: Faker::Date.between(from: 32.days.ago, to: Date.today)
      )
   end
  puts "Contactos cadastrados com sucesso!"
  end
end
