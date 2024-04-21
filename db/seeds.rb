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
        base_wine: "Gin",
        garnish: "Lime wedge or twist of lemon peel",
        glass: "Highball",
        ingredient: "<ol><li>Gin 2 oz</li><li>Tonic water 4-6 oz</li></ol>",
        method: "<ul><li>Fill a highball glass with ice.</li><li>Pour gin over the ice.</li><li>Top with tonic water.</li><li>Stir gently.</li><li>Garnish with a lime wedge or twist of lemon peel.</li></ul>"
    },
    {
        name: "Alexander",
        history: "The Alexander is a classic cocktail that dates back to the early 20th century. It is believed to have been created around the 1920s, and its exact origins are somewhat disputed. The cocktail features a delightful blend of gin, crème de cacao, and cream, resulting in a smooth and indulgent flavor.",
        base_wine: "Gin",
        skill: "Shake",
        garnish: "Grated nutmeg",
        glass: "Coupette",
        ingredient: "<ol><li>Gin 1 1/2 oz</li><li>Crème de cacao (dark) 1 oz</li><li>Fresh cream 1 oz</li></ol>",
        method: "<ul><li>Add all ingredients into a shaker with ice.</li><li>Shake well until chilled.</li><li>Strain into a chilled coupette glass.</li><li>Garnish with grated nutmeg on top.</li></ul>"
    },
    {
        name: "Americano",
        history: "Americano is a classic cocktail that originated in Italy during the 19th century. It was originally known as the Milano-Torino due to its two main ingredients from Milan (Campari) and Turin (sweet vermouth). The cocktail's name changed to Americano due to its popularity among American tourists during the Prohibition era.",
        base_wine: "Campari",
        skill: "Stir",
        garnish: "Orange slice or twist",
        glass: "Old-Fashioned",
        ingredient: "<ol><li>1 1/2 oz Campari</li><li>1 1/2 oz Sweet vermouth</li><li>Soda water</li></ol>",
        method: "<ul><li>Fill a highball glass with ice.</li><li>Pour Campari and sweet vermouth over the ice.</li><li>Top with soda water.</li><li>Stir gently.</li><li>Garnish with an orange slice or twist.</li></ul>"
    },
    {
        name: "Angel Face",
        history: "Angel Face is a classic cocktail that first appeared in the Savoy Cocktail Book published in 1930. The cocktail's name is attributed to its delicate and angelic flavor profile, derived from a blend of gin, apricot brandy, and apple brandy.",
        base_wine: "Gin",
        skill: "Shake",
        garnish: "Lemon twist",
        glass: "Coupette",
        ingredient: "<ol><li>Gin 1 oz</li><li>Apricot brandy 1 oz</li><li>Apple brandy 1 oz</li></ol>",
        method: "<ul><li>Add all ingredients into a shaker with ice.</li><li>Shake well until chilled.</li><li>Strain into a chilled coupette glass.</li><li>Garnish with a lemon twist.</li></ul>"
    },
    {
        name: "Aperol Spritz",
        history: "Aperol Spritz is a popular Italian cocktail that has gained international fame. It is believed to have originated in Italy during the 1950s. This refreshing cocktail is known for its vibrant orange color and bittersweet taste.",
        base_wine: "Aperol",
        skill: "Build",
        garnish: "Orange slice",
        glass: "Wine glass",
        ingredient: "<ol><li>Aperol 2 oz</li><li>Prosecco 3 oz</li><li>Soda water 1 oz</li></ol>",
        method: "<ul><li>Fill a wine glass with ice.</li><li>Add Aperol and Prosecco.</li><li>Top with soda water.</li><li>Garnish with an orange slice.</li></ul>"
    },
    {
        name: "John Collins",
        history: "The John Collins is a classic cocktail that originated in the mid-19th century. It is a variation of the Tom Collins, replacing gin with bourbon or whiskey. The cocktail is named after the headwaiter of a London hotel where it was popularized.",
        base_wine: "Whiskey",
        skill: "Build",
        garnish: "Lemon slice and cherry",
        glass: "Collins glass",
        ingredient: "<ol><li>Bourbon or whiskey 2 oz</li><li>Lemon juice 1 oz</li><li>Simple syrup 1/2 oz</li><li>Soda water to top</li></ol>",
        method: "<ul><li>Fill a Collins glass with ice.</li><li>Add bourbon or whiskey, lemon juice, and simple syrup.</li><li>Stir gently.</li><li>Top with soda water.</li><li>Garnish with a lemon slice and a cherry.</li></ul>"
    },
    {
        name: "Bellini",
        history: "The Bellini is a classic Italian cocktail created in Venice, Italy. It is believed to have been invented by Giuseppe Cipriani, the founder of Harry's Bar in Venice, in the 1930s or 1940s. The cocktail is named after Giovanni Bellini, a 15th-century Venetian painter known for his use of soft colors.",
        base_wine: "Prosecco",
        skill: "Build",
        garnish: "Peach slice",
        glass: "Champagne flute",
        ingredient: "<ol><li>Prosecco 4 oz</li><li>Peach puree 2 oz</li></ol>",
        method: "<ul><li>Pour peach puree into a Champagne flute.</li><li>Top with Prosecco.</li><li>Gently stir to combine.</li><li>Garnish with a peach slice.</li></ul>"
    }





]

ClassicCocktail.create(classic_cocktails)

puts "種子資料已創建!"
