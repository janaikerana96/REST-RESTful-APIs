namespace :dev do
  desc "Configurando o ambiente de Desenvolvimento"
  task setup: :environment do
  puts "Cadastrando os Tipo contactos ..."
  kinds = %w(Amigo Comercial Conhecido)
  kinds.each do |kind|
    Kind.create!(descripton: kind)
  end
  puts " Tipo Contactos cadastrados com sucesso!"

  puts "###########################################"

  puts "Cadastrando os contactos ..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birtdate: Faker::Date.between(from: 32.days.ago, to: Date.today),
        kind: Kind.all.sample
      )
   end
  puts "Contactos cadastrados com sucesso!"
  end
end
