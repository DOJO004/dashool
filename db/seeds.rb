# frozen_string_literal: true
user = {
    email: "chendojo004@gmail.com",
    password: ENV["USER_PASSWORD"],
    full_name: "Chendojo",
    role: "admin"
}

User.create(user)

ClassicCocktail.delete_all

classic_cocktails = [
    {
        name: "Gin Tonic",
        history: "The Gin and Tonic has a long history dating back to the British colonial era when tonic water was used to mask the bitter taste of quinine, a malaria treatment. Over time, it evolved into a popular cocktail with various gin and tonic water combinations.",
        skill: "Build",
        garnish: "Lime wedge or twist of lemon peel",
        glass: "Highball",
        ingredient: "Gin 2 oz \n Tonic water 4-6 oz",
        method: "1. Fill a highball glass with ice.\n2. Pour gin over the ice.\n3. Top with tonic water.\n4. Stir gently.\n5. Garnish with a lime wedge or twist of lemon peel."
    },
]

ClassicCocktail.create(classic_cocktails)

puts "種子資料已創建!"
