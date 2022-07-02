namespace :dev do
  desc "Configurando o ambiente de Desenvolvimento"
  task setup: :environment do
    100.time do |i|
      Contact.create!(
        name:,
        email:,
        birtdate:
      )  
  end
end
