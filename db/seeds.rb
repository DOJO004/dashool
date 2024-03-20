# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Cocktail.delete_all

cocktails = [
  { name: 'Mojito', introduce: 'A traditional Cuban highball.', type_of: 'Classic' },
  { name: 'Martini', introduce: 'A cocktail made with gin and vermouth.', type_of: 'Classic' },
  { name: 'Daiquiri', introduce: 'A family of cocktails whose main ingredients are rum, citrus juice, and sugar.', type_of: 'Classic' },
  { name: 'Margarita', introduce: 'A cocktail consisting of tequila, orange liqueur, and lime juice.', type_of: 'Classic' },
  { name: 'Cosmopolitan', introduce: 'A cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed lime juice.', type_of: 'Classic' },
  { name: 'Old Fashioned', introduce: 'A cocktail made by muddling sugar with bitters, then adding alcohol, such as whiskey or brandy.', type_of: 'Classic' },
  { name: 'Bloody Mary', introduce: 'A cocktail containing vodka, tomato juice, and combinations of other spices and flavorings.', type_of: 'Classic' },
  { name: 'Manhattan', introduce: 'A cocktail made with whiskey, sweet vermouth, and bitters.', type_of: 'Classic' },
  { name: 'Negroni', introduce: 'A cocktail made of one part gin, one part vermouth rosso, and one part Campari.', type_of: 'Classic' },
  { name: 'Pina Colada', introduce: 'A sweet cocktail made with rum, coconut cream or coconut milk, and pineapple juice.', type_of: 'Classic' }
]

cocktails.each do |cocktail|
    Cocktail.create(cocktail)
end

puts "種子資料已創建!"