# frozen_string_literal: true

user = {
  email: "chendojo004@gmail.com",
  password: ENV["USER_PASSWORD"],
  full_name: "Chendojo",
  role: "admin",
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
    method: "<ul><li>Fill a highball glass with ice.</li><li>Pour gin over the ice.</li><li>Top with tonic water.</li><li>Stir gently.</li><li>Garnish with a lime wedge or twist of lemon peel.</li></ul>",
  },
  {
    name: "Alexander",
    history: "The Alexander is a classic cocktail that dates back to the early 20th century. It is believed to have been created around the 1920s, and its exact origins are somewhat disputed. The cocktail features a delightful blend of gin, crème de cacao, and cream, resulting in a smooth and indulgent flavor.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "Grated nutmeg",
    glass: "Coupette",
    ingredient: "<ol><li>Gin 1 1/2 oz</li><li>Crème de cacao (dark) 1 oz</li><li>Fresh cream 1 oz</li></ol>",
    method: "<ul><li>Add all ingredients into a shaker with ice.</li><li>Shake well until chilled.</li><li>Strain into a chilled coupette glass.</li><li>Garnish with grated nutmeg on top.</li></ul>",
  },
  {
    name: "Americano",
    history: "Americano is a classic cocktail that originated in Italy during the 19th century. It was originally known as the Milano-Torino due to its two main ingredients from Milan (Campari) and Turin (sweet vermouth). The cocktail's name changed to Americano due to its popularity among American tourists during the Prohibition era.",
    base_wine: "Campari",
    skill: "Stir",
    garnish: "Orange slice or twist",
    glass: "Old-Fashioned",
    ingredient: "<ol><li>1 1/2 oz Campari</li><li>1 1/2 oz Sweet vermouth</li><li>Soda water</li></ol>",
    method: "<ul><li>Fill a highball glass with ice.</li><li>Pour Campari and sweet vermouth over the ice.</li><li>Top with soda water.</li><li>Stir gently.</li><li>Garnish with an orange slice or twist.</li></ul>",
  },
  {
    name: "Angel Face",
    history: "Angel Face is a classic cocktail that first appeared in the Savoy Cocktail Book published in 1930. The cocktail's name is attributed to its delicate and angelic flavor profile, derived from a blend of gin, apricot brandy, and apple brandy.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "Lemon twist",
    glass: "Coupette",
    ingredient: "<ol><li>Gin 1 oz</li><li>Apricot brandy 1 oz</li><li>Apple brandy 1 oz</li></ol>",
    method: "<ul><li>Add all ingredients into a shaker with ice.</li><li>Shake well until chilled.</li><li>Strain into a chilled coupette glass.</li><li>Garnish with a lemon twist.</li></ul>",
  },
  {
    name: "Aperol Spritz",
    history: "Aperol Spritz is a popular Italian cocktail that has gained international fame. It is believed to have originated in Italy during the 1950s. This refreshing cocktail is known for its vibrant orange color and bittersweet taste.",
    base_wine: "Aperol",
    skill: "Build",
    garnish: "Orange slice",
    glass: "Wine glass",
    ingredient: "<ol><li>Aperol 2 oz</li><li>Prosecco 3 oz</li><li>Soda water 1 oz</li></ol>",
    method: "<ul><li>Fill a wine glass with ice.</li><li>Add Aperol and Prosecco.</li><li>Top with soda water.</li><li>Garnish with an orange slice.</li></ul>",
  },
  {
    name: "John Collins",
    history: "The John Collins is a classic cocktail that originated in the mid-19th century. It is a variation of the Tom Collins, replacing gin with bourbon or whiskey. The cocktail is named after the headwaiter of a London hotel where it was popularized.",
    base_wine: "Whiskey",
    skill: "Build",
    garnish: "Lemon slice and cherry",
    glass: "Collins glass",
    ingredient: "<ol><li>Bourbon or whiskey 2 oz</li><li>Lemon juice 1 oz</li><li>Simple syrup 1/2 oz</li><li>Soda water to top</li></ol>",
    method: "<ul><li>Fill a Collins glass with ice.</li><li>Add bourbon or whiskey, lemon juice, and simple syrup.</li><li>Stir gently.</li><li>Top with soda water.</li><li>Garnish with a lemon slice and a cherry.</li></ul>",
  },
  {
    name: "Bellini",
    history: "The Bellini is a classic Italian cocktail created in Venice, Italy. It is believed to have been invented by Giuseppe Cipriani, the founder of Harry's Bar in Venice, in the 1930s or 1940s. The cocktail is named after Giovanni Bellini, a 15th-century Venetian painter known for his use of soft colors.",
    base_wine: "Prosecco",
    skill: "Build",
    garnish: "Peach slice",
    glass: "Champagne flute",
    ingredient: "<ol><li>Prosecco 4 oz</li><li>Peach puree 2 oz</li></ol>",
    method: "<ul><li>Pour peach puree into a Champagne flute.</li><li>Top with Prosecco.</li><li>Gently stir to combine.</li><li>Garnish with a peach slice.</li></ul>",
  },
  {
    name: "Between the Sheets",
    history: "The Between the Sheets is a classic cocktail that first appeared in the 1930s. Its exact origins are uncertain, but it is believed to have been created in either Paris or New York. The cocktail is a variation of the Sidecar and typically features rum, brandy, and citrus.",
    base_wine: "White rum",
    skill: "Shake",
    garnish: "Lemon twist",
    glass: "Cocktail glass",
    ingredient: "<ul><li>White rum 1 oz</li><li>Cognac 1 oz</li><li>Triple sec 1 oz</li><li>Lemon juice 3/4 oz</li></ul>",
    method: "<ol><li>Combine all ingredients in a shaker with ice.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li><li>Garnish with a lemon twist.</li></ol>",
  },
  {
    name: "Black Russian",
    history: "The Black Russian is a classic cocktail believed to have been created in the late 1940s by Gustave Tops, a Belgian bartender, at the Hotel Metropole in Brussels. It is a simple cocktail consisting of just two ingredients: vodka and coffee liqueur.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "None",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Coffee liqueur 1 oz</li></ul>",
    method: "<ol><li>Fill an old-fashioned glass with ice cubes.</li><li>Pour vodka and coffee liqueur over ice.</li><li>Stir gently to combine.</li><li>No garnish needed.</li></ol>",
  },
  {
    name: "Bloody Mary",
    history: "The Bloody Mary is a classic cocktail with disputed origins. One story attributes its creation to Fernand Petiot, a bartender at Harry's New York Bar in Paris, in the 1920s. Another theory suggests it was invented by George Jessel, an actor and comedian, in the 1930s. Regardless of its origins, the Bloody Mary is a popular brunch cocktail made with vodka, tomato juice, and various spices and flavorings.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Celery stalk, lemon wedge, and/or pickles",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Tomato juice 3 oz</li><li>Lemon juice 0.5 oz</li><li>Worcestershire sauce 0.5 oz</li><li>Tabasco sauce 2 dashes</li><li>Salt and pepper to taste</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Pour vodka, tomato juice, lemon juice, Worcestershire sauce, and Tabasco sauce over ice.</li><li>Season with salt and pepper to taste.</li><li>Stir well to combine.</li><li>Garnish with a celery stalk, lemon wedge, and/or pickles.</li></ol>",
  },
  {
    name: "Boulevardier",
    history: "The Boulevardier is a classic cocktail that dates back to the 1920s and is considered a variation of the Negroni. It is believed to have been created by Erskine Gwynne, an American expatriate living in Paris and publishing a magazine called 'Boulevardier'. The cocktail is made with whiskey (often bourbon), sweet vermouth, and Campari.",
    base_wine: "Whiskey (typically bourbon)",
    skill: "Stir",
    garnish: "Orange twist",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Whiskey (typically bourbon) 1.5 oz</li><li>Sweet vermouth 1 oz</li><li>Campari 1 oz</li></ul>",
    method: "<ol><li>Fill an old-fashioned glass with ice cubes.</li><li>Pour whiskey, sweet vermouth, and Campari over ice.</li><li>Stir gently to combine.</li><li>Garnish with an orange twist.</li></ol>",
  },
  {
    name: "Cosmopolitan",
    history: "The Cosmopolitan, also known as the Cosmo, is a cocktail made with vodka, triple sec, cranberry juice, and freshly squeezed lime juice. It gained popularity in the 1990s, especially among fashionable urban drinkers.",
    base_wine: "Vodka",
    skill: "Shake",
    garnish: "Lime wheel or twist",
    glass: "Martini glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Triple sec 0.5 oz</li><li>Cranberry juice 1 oz</li><li>Freshly squeezed lime juice 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add vodka, triple sec, cranberry juice, and lime juice.</li><li>Shake well until chilled.</li><li>Strain into a chilled martini glass.</li><li>Garnish with a lime wheel or twist.</li></ol>",
  },
  {
    name: "Cuba Libre",
    history: "The Cuba Libre, meaning 'Free Cuba' in Spanish, is a cocktail made with rum, cola, and lime juice. It is closely associated with Cuba and is believed to have been invented there around the turn of the 20th century.",
    base_wine: "Rum",
    skill: "Build",
    garnish: "Lime wedge",
    glass: "Highball glass",
    ingredient: "<ul><li>Rum 2 oz</li><li>Cola to top</li><li>Freshly squeezed lime juice 0.5 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Pour rum and cola over ice.</li><li>Squeeze lime juice into the glass.</li><li>Stir gently to combine.</li><li>Garnish with a lime wedge.</li></ol>",
  },
  {
    name: "Daiquiri",
    history: "The Daiquiri is a classic cocktail that originated in Cuba. It is made with rum, lime juice, and simple syrup. The drink is named after the beach near Santiago de Cuba and is believed to have been invented by an American mining engineer, Jennings Cox, in the late 19th century.",
    base_wine: "Rum",
    skill: "Shake",
    garnish: "Lime wheel or wedge",
    glass: "Cocktail glass",
    ingredient: "<ul><li>White rum 2 oz</li><li>Freshly squeezed lime juice 0.75 oz</li><li>Simple syrup 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add rum, lime juice, and simple syrup.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li><li>Garnish with a lime wheel or wedge.</li></ol>",
  },
  {
    name: "Espresso Martini",
    history: "The Espresso Martini is a cocktail made with vodka, coffee liqueur, and freshly brewed espresso. It was invented by the late bartender Dick Bradsell in the late 1980s while working at the Soho Brasserie in London. The story goes that a famous model asked him to create a drink that would 'wake me up and then f*** me up'.",
    base_wine: "Vodka",
    skill: "Shake",
    garnish: "Coffee beans",
    glass: "Martini glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Coffee liqueur 0.75 oz</li><li>Espresso 1 oz</li><li>Sugar syrup (optional) 0.25 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add vodka, coffee liqueur, and espresso (and sugar syrup if using).</li><li>Shake well until chilled.</li><li>Strain into a chilled martini glass.</li><li>Garnish with coffee beans.</li></ol>",
  },
  {
    name: "French 75",
    history: "The French 75 is a classic cocktail that dates back to World War I. It was first created in 1915 at the New York Bar in Paris (now known as Harry's New York Bar) and was named after the French 75mm field gun, a powerful weapon used during the war. The cocktail is made with gin, champagne, lemon juice, and sugar.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "Lemon twist",
    glass: "Champagne flute",
    ingredient: "<ul><li>Gin 1 oz</li><li>Lemon juice 0.5 oz</li><li>Simple syrup 0.5 oz</li><li>Champagne to top</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add gin, lemon juice, and simple syrup.</li><li>Shake well until chilled.</li><li>Strain into a chilled champagne flute.</li><li>Top with champagne.</li><li>Garnish with a lemon twist.</li></ol>",
  },
  {
    name: "Gin Fizz",
    history: "The Gin Fizz is a classic cocktail that dates back to the late 19th century. It is a variation of the traditional Fizz cocktail, which typically consists of spirit, citrus juice, sugar, and carbonated water. The Gin Fizz specifically uses gin as its base spirit.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "Lemon wheel",
    glass: "Highball glass",
    ingredient: "<ul><li>Gin 2 oz</li><li>Freshly squeezed lemon juice 1 oz</li><li>Simple syrup 0.5 oz</li><li>Soda water to top</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add gin, lemon juice, and simple syrup.</li><li>Shake well until chilled.</li><li>Strain into a highball glass filled with ice cubes.</li><li>Top with soda water.</li><li>Garnish with a lemon wheel.</li></ol>",
  },
  {
    name: "Grasshopper",
    history: "The Grasshopper is a classic cocktail that originated in New Orleans in the early 20th century. It is a creamy and minty dessert cocktail made with equal parts of crème de menthe, crème de cacao, and cream.",
    base_wine: "None",
    skill: "Shake",
    garnish: "Mint leaf",
    glass: "Martini glass",
    ingredient: "<ul><li>Crème de menthe 0.75 oz</li><li>Crème de cacao 0.75 oz</li><li>Heavy cream 0.75 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add crème de menthe, crème de cacao, and heavy cream.</li><li>Shake well until chilled.</li><li>Strain into a chilled martini glass.</li><li>Garnish with a mint leaf.</li></ol>",
  },
  {
    name: "Hemingway Special",
    history: "The Hemingway Special, also known as the Hemingway Daiquiri or Papa Doble, is a variation of the classic Daiquiri cocktail. It was created for the writer Ernest Hemingway, who frequented the El Floridita bar in Havana, Cuba. This cocktail is known for its tartness and the absence of sugar.",
    base_wine: "Rum",
    skill: "Shake",
    garnish: "Lime wheel or wedge",
    glass: "Cocktail glass",
    ingredient: "<ul><li>White rum 2 oz</li><li>Freshly squeezed lime juice 0.75 oz</li><li>Maraschino liqueur 0.5 oz</li><li>Grapefruit juice 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add rum, lime juice, maraschino liqueur, and grapefruit juice.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li><li>Garnish with a lime wheel or wedge.</li></ol>",
  },
  {
    name: "Horse's Neck",
    history: "The Horse's Neck is a classic cocktail dating back to the late 19th century. It is a simple yet refreshing drink made with whiskey and ginger ale, typically garnished with a long spiral of lemon peel.",
    base_wine: "Whiskey",
    skill: "Build",
    garnish: "Lemon peel",
    glass: "Highball glass",
    ingredient: "<ul><li>Whiskey 2 oz</li><li>Ginger ale to top</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Pour whiskey over ice.</li><li>Top with ginger ale.</li><li>Gently stir to combine.</li><li>Garnish with a long spiral of lemon peel.</li></ol>",
  },
  {
    name: "Irish Coffee",
    history: "The Irish Coffee is a classic cocktail that originated in Ireland in the 1940s. It is made with hot coffee, Irish whiskey, sugar, and topped with whipped cream.",
    base_wine: "Whiskey",
    skill: "Build",
    garnish: "Whipped cream",
    glass: "Irish coffee glass",
    ingredient: "<ul><li>Irish whiskey 1.5 oz</li><li>Hot coffee 4 oz</li><li>Brown sugar 1 tsp</li><li>Whipped cream for topping</li></ul>",
    method: "<ol><li>Heat an Irish coffee glass with hot water, then discard the water.</li><li>Pour whiskey into the heated glass.</li><li>Add hot coffee and brown sugar, stirring until dissolved.</li><li>Top with whipped cream.</li></ol>",
  },
  {
    name: "Last Word",
    history: "The Last Word is a classic cocktail that originated during Prohibition in the 1920s at the Detroit Athletic Club. It is made with equal parts gin, green Chartreuse, maraschino liqueur, and freshly squeezed lime juice.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "None",
    glass: "Cocktail glass",
    ingredient: "<ul><li>Gin 1 oz</li><li>Green Chartreuse 1 oz</li><li>Maraschino liqueur 1 oz</li><li>Freshly squeezed lime juice 1 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add gin, green Chartreuse, maraschino liqueur, and lime juice.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li></ol>",
  },
  {
    name: "Long Island Iced Tea",
    history: "The Long Island Iced Tea is a classic cocktail that originated in the 1970s on Long Island, New York. Despite its name, it contains no tea. It is made with vodka, gin, rum, tequila, triple sec, sour mix, and cola.",
    base_wine: "Vodka, Gin, Rum, Tequila",
    skill: "Build",
    garnish: "Lemon wedge",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 0.5 oz</li><li>Gin 0.5 oz</li><li>Rum 0.5 oz</li><li>Tequila 0.5 oz</li><li>Triple sec 0.5 oz</li><li>Sour mix 1 oz</li><li>Cola to top</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Pour vodka, gin, rum, tequila, triple sec, and sour mix over ice.</li><li>Top with cola.</li><li>Garnish with a lemon wedge.</li><li>Stir gently to combine.</li></ol>",
  },
  {
    name: "Mai Tai",
    history: "The Mai Tai is a classic cocktail that originated in the 1940s at Trader Vic's in Oakland, California. It is made with rum, lime juice, orgeat syrup, and orange liqueur.",
    base_wine: "Rum",
    skill: "Shake",
    garnish: "Mint sprig and/or lime wheel",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>White rum 1.5 oz</li><li>Dark rum 0.5 oz</li><li>Lime juice 1 oz</li><li>Orgeat syrup 0.5 oz</li><li>Orange liqueur 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add white rum, dark rum, lime juice, orgeat syrup, and orange liqueur.</li><li>Shake well until chilled.</li><li>Strain into an old-fashioned glass filled with crushed ice.</li><li>Garnish with a mint sprig and/or lime wheel.</li></ol>",
  },
  {
    name: "Margarita",
    history: "The Margarita is a classic cocktail that originated in Mexico. It is made with tequila, triple sec, and lime juice, often served with salt on the rim of the glass.",
    base_wine: "Tequila",
    skill: "Shake",
    garnish: "Salt rim, lime wheel or wedge",
    glass: "Margarita glass",
    ingredient: "<ul><li>Tequila 1.5 oz</li><li>Triple sec 0.5 oz</li><li>Freshly squeezed lime juice 1 oz</li></ul>",
    method: "<ol><li>Moisten the rim of a margarita glass with a lime wedge, then dip the rim in salt.</li><li>Fill a shaker with ice cubes.</li><li>Add tequila, triple sec, and lime juice.</li><li>Shake well until chilled.</li><li>Strain into the prepared glass over ice.</li><li>Garnish with a lime wheel or wedge.</li></ol>",
  },
  {
    name: "Martini",
    history: "The Martini is a classic cocktail that originated in the 19th century. It is made with gin and dry vermouth, often garnished with an olive or a lemon twist.",
    base_wine: "Gin",
    skill: "Stir",
    garnish: "Olive or lemon twist",
    glass: "Martini glass",
    ingredient: "<ul><li>Gin 2.5 oz</li><li>Dry vermouth 0.5 oz</li></ul>",
    method: "<ol><li>Fill a mixing glass with ice cubes.</li><li>Add gin and dry vermouth.</li><li>Stir well until chilled.</li><li>Strain into a chilled martini glass.</li><li>Garnish with an olive or a lemon twist.</li></ol>",
  },
  {
    name: "Mimosa",
    history: "The Mimosa is a classic cocktail that originated in France. It is made with equal parts of champagne (or sparkling wine) and chilled citrus juice, usually orange juice.",
    base_wine: "Champagne or sparkling wine",
    skill: "Build",
    garnish: "Orange twist or slice",
    glass: "Champagne flute",
    ingredient: "<ul><li>Champagne or sparkling wine 2 oz</li><li>Orange juice 2 oz</li></ul>",
    method: "<ol><li>Pour champagne or sparkling wine into a champagne flute.</li><li>Add orange juice.</li><li>Stir gently to combine.</li><li>Garnish with an orange twist or slice.</li></ol>",
  },
  {
    name: "Mint Julep",
    history: "The Mint Julep is a classic cocktail with Southern origins, traditionally associated with the Kentucky Derby. It is made with bourbon, sugar, water, and fresh mint.",
    base_wine: "Bourbon",
    skill: "Build",
    garnish: "Fresh mint sprigs",
    glass: "Julep cup or rocks glass",
    ingredient: "<ul><li>Bourbon 2 oz</li><li>Simple syrup 0.5 oz</li><li>Fresh mint leaves</li></ul>",
    method: "<ol><li>Muddle fresh mint leaves and simple syrup in the bottom of a julep cup or rocks glass.</li><li>Add bourbon and fill with crushed ice.</li><li>Stir gently to combine.</li><li>Garnish with a bouquet of fresh mint sprigs.</li></ol>",
  },
  {
    name: "Mojito",
    history: "The Mojito is a classic Cuban cocktail that dates back to the 16th century. It is made with rum, sugar, lime juice, soda water, and mint.",
    base_wine: "Rum",
    skill: "Build",
    garnish: "Mint sprig and/or lime wedge",
    glass: "Highball glass",
    ingredient: "<ul><li>White rum 2 oz</li><li>Fresh lime juice 0.5 oz</li><li>Simple syrup 0.5 oz</li><li>Soda water to top</li><li>Fresh mint leaves</li></ul>",
    method: "<ol><li>In a highball glass, muddle mint leaves and simple syrup.</li><li>Add rum and lime juice.</li><li>Fill the glass with ice cubes.</li><li>Top with soda water.</li><li>Garnish with a mint sprig and/or lime wedge.</li><li>Stir gently to combine.</li></ol>",
  },
  {
    name: "Moscow Mule",
    history: "The Moscow Mule is a classic cocktail that originated in the 1940s. It is made with vodka, spicy ginger beer, and lime juice, and typically served in a copper mug.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Lime wheel or wedge",
    glass: "Copper mug",
    ingredient: "<ul><li>Vodka 2 oz</li><li>Ginger beer 4 oz</li><li>Freshly squeezed lime juice 0.5 oz</li></ul>",
    method: "<ol><li>Fill a copper mug with ice cubes.</li><li>Add vodka and lime juice.</li><li>Top with ginger beer.</li><li>Stir gently to combine.</li><li>Garnish with a lime wheel or wedge.</li></ol>",
  },
  {
    name: "Negroni",
    history: "The Negroni is a classic Italian cocktail that originated in Florence in the early 20th century. It is made with equal parts of gin, sweet vermouth, and Campari, garnished with an orange peel.",
    base_wine: "Gin",
    skill: "Build",
    garnish: "Orange peel",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Gin 1 oz</li><li>Sweet vermouth 1 oz</li><li>Campari 1 oz</li></ul>",
    method: "<ol><li>Fill an old-fashioned glass with ice cubes.</li><li>Add gin, sweet vermouth, and Campari.</li><li>Stir gently to combine.</li><li>Garnish with an orange peel.</li></ol>",
  },
  {
    name: "New York Sour",
    history: "The New York Sour is a classic cocktail that is a variation of the Whiskey Sour. It features a layer of red wine floated on top of the cocktail, giving it a unique appearance and flavor.",
    base_wine: "Whiskey",
    skill: "Shake",
    garnish: "Lemon wheel or cherry",
    glass: "Rocks glass",
    ingredient: "<ul><li>Bourbon or rye whiskey 2 oz</li><li>Freshly squeezed lemon juice 0.75 oz</li><li>Simple syrup 0.5 oz</li><li>Red wine (float) 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add whiskey, lemon juice, and simple syrup.</li><li>Shake well until chilled.</li><li>Strain into a rocks glass filled with ice cubes.</li><li>Float red wine on top by pouring it over the back of a spoon.</li><li>Garnish with a lemon wheel or cherry.</li></ol>",
  },
  {
    name: "Old Fashioned",
    history: "The Old Fashioned is a classic cocktail dating back to the early 19th century. It is made by muddling sugar with bitters, adding whiskey or brandy, and a twist of citrus rind.",
    base_wine: "Whiskey or brandy",
    skill: "Build",
    garnish: "Orange twist",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Whiskey or brandy 2 oz</li><li>Sugar cube or simple syrup 1 tsp</li><li>Bitters 2 dashes</li><li>Water (optional) 1 tsp</li></ul>",
    method: "<ol><li>In an old-fashioned glass, muddle the sugar cube with bitters and water (if using).</li><li>Add whiskey or brandy and stir until well mixed.</li><li>Fill the glass with ice cubes.</li><li>Garnish with an orange twist.</li></ol>",
  },
  {
    name: "Penicillin",
    history: "The Penicillin is a modern classic cocktail created in New York City in the early 2000s. It is made with Scotch whisky, honey-ginger syrup, lemon juice, and a smoky Scotch float.",
    base_wine: "Scotch whisky",
    skill: "Shake",
    garnish: "Candied ginger or lemon twist",
    glass: "Rocks glass",
    ingredient: "<ul><li>Scotch whisky 2 oz</li><li>Freshly squeezed lemon juice 0.75 oz</li><li>Honey-ginger syrup 0.75 oz</li><li>Islay Scotch (float) 0.25 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add Scotch whisky, lemon juice, and honey-ginger syrup.</li><li>Shake well until chilled.</li><li>Strain into a rocks glass filled with ice cubes.</li><li>Float Islay Scotch on top by pouring it over the back of a spoon.</li><li>Garnish with candied ginger or a lemon twist.</li></ol>",
  },
  {
    name: "Pina Colada",
    history: "The Piña Colada is a classic tropical cocktail that originated in Puerto Rico. It is made with rum, coconut cream, and pineapple juice, often garnished with a pineapple wedge and a maraschino cherry.",
    base_wine: "Rum",
    skill: "Blend",
    garnish: "Pineapple wedge and maraschino cherry",
    glass: "Hurricane glass",
    ingredient: "<ul><li>White rum 1.5 oz</li><li>Coconut cream 2 oz</li><li>Pineapple juice 2 oz</li></ul>",
    method: "<ol><li>Add rum, coconut cream, and pineapple juice to a blender with crushed ice.</li><li>Blend until smooth.</li><li>Pour into a hurricane glass.</li><li>Garnish with a pineapple wedge and a maraschino cherry.</li></ol>",
  },
  {
    name: "Pisco Sour",
    history: "The Pisco Sour is a classic cocktail that originated in Peru. It is made with pisco, a type of grape brandy, lime juice, simple syrup, egg white, and Angostura bitters.",
    base_wine: "Pisco",
    skill: "Shake",
    garnish: "Angostura bitters",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Pisco 2 oz</li><li>Freshly squeezed lime juice 1 oz</li><li>Simple syrup 0.75 oz</li><li>Egg white 1</li><li>Angostura bitters for garnish</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add pisco, lime juice, simple syrup, and egg white.</li><li>Shake well without ice (dry shake) for about 10 seconds.</li><li>Add ice and shake again until well chilled.</li><li>Strain into an old-fashioned glass.</li><li>Garnish with a few drops of Angostura bitters.</li></ol>",
  },
  {
    name: "Sea Breeze",
    history: "The Sea Breeze is a classic cocktail that became popular in the 1970s. It is made with vodka, cranberry juice, and grapefruit juice, typically served over ice.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Lime wedge or grapefruit slice",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Cranberry juice 3 oz</li><li>Grapefruit juice 1 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Add vodka, cranberry juice, and grapefruit juice.</li><li>Stir gently to combine.</li><li>Garnish with a lime wedge or grapefruit slice.</li></ol>",
  },
  {
    name: "Sex on the Beach",
    history: "Sex on the Beach is a classic cocktail that gained popularity in the 1980s. It is made with vodka, peach schnapps, cranberry juice, and orange juice.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Orange slice and cherry",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Peach schnapps 0.5 oz</li><li>Cranberry juice 2 oz</li><li>Orange juice 2 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Add vodka, peach schnapps, cranberry juice, and orange juice.</li><li>Stir gently to combine.</li><li>Garnish with an orange slice and a cherry.</li></ol>",
  },
  {
    name: "Screwdriver",
    history: "The Screwdriver is a classic cocktail that dates back to the mid-20th century. It is a simple mixture of vodka and orange juice, typically served over ice.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Orange wheel or wedge",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Orange juice 3 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Add vodka and orange juice.</li><li>Stir gently to combine.</li><li>Garnish with an orange wheel or wedge.</li></ol>",
  },
  {
    name: "Singapore Sling",
    history: "The Singapore Sling is a classic cocktail that originated in Singapore in the early 20th century. It is a gin-based cocktail with a sweet and refreshing taste.",
    base_wine: "Gin",
    skill: "Shake",
    garnish: "Pineapple slice and cherry",
    glass: "Hurricane glass",
    ingredient: "<ul><li>Gin 1.5 oz</li><li>Cherry brandy 0.5 oz</li><li>Cointreau 0.5 oz</li><li>Benedictine 0.25 oz</li><li>Grenadine 0.5 oz</li><li>Freshly squeezed lime juice 0.75 oz</li><li>Pineapple juice 4 oz</li><li>Angostura bitters 1 dash</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add all ingredients.</li><li>Shake well until chilled.</li><li>Strain into a hurricane glass filled with ice cubes.</li><li>Garnish with a pineapple slice and a cherry.</li></ol>",
  },
  {
    name: "Tequila Sunrise",
    history: "The Tequila Sunrise is a classic cocktail that originated in California in the 1970s. It is made with tequila, orange juice, and grenadine, creating a colorful sunrise effect.",
    base_wine: "Tequila",
    skill: "Build",
    garnish: "Orange slice and cherry",
    glass: "Highball glass",
    ingredient: "<ul><li>Tequila 2 oz</li><li>Orange juice 4 oz</li><li>Grenadine 0.5 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Pour tequila and orange juice over ice.</li><li>Slowly pour grenadine into the glass, allowing it to sink to the bottom.</li><li>Do not stir, to maintain the sunrise effect.</li><li>Garnish with an orange slice and a cherry.</li></ol>",
  },
  {
    name: "Vesper",
    history: "The Vesper is a classic cocktail made famous by Ian Fleming's James Bond novel, Casino Royale. It is a martini variation made with gin, vodka, and Lillet Blanc.",
    base_wine: "Gin, Vodka",
    skill: "Stir",
    garnish: "Lemon twist",
    glass: "Martini glass",
    ingredient: "<ul><li>Gin 3 oz</li><li>Vodka 1 oz</li><li>Lillet Blanc 0.5 oz</li></ul>",
    method: "<ol><li>Fill a mixing glass with ice cubes.</li><li>Add gin, vodka, and Lillet Blanc.</li><li>Stir well until chilled.</li><li>Strain into a chilled martini glass.</li><li>Garnish with a lemon twist.</li></ol>",
  },
  {
    name: "Whiskey Sour",
    history: "The Whiskey Sour is a classic cocktail that dates back to the mid-19th century. It is made with whiskey, lemon juice, and simple syrup, typically served with a cherry and an orange slice.",
    base_wine: "Whiskey",
    skill: "Shake",
    garnish: "Cherry and orange slice",
    glass: "Rocks glass",
    ingredient: "<ul><li>Whiskey 2 oz</li><li>Freshly squeezed lemon juice 0.75 oz</li><li>Simple syrup 0.5 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add whiskey, lemon juice, and simple syrup.</li><li>Shake well until chilled.</li><li>Strain into a rocks glass filled with ice cubes.</li><li>Garnish with a cherry and an orange slice.</li></ol>",
  },
  {
    name: "White Russian",
    history: "The White Russian is a classic cocktail that gained popularity in the 1970s. It is made with vodka, coffee liqueur, and cream or milk, served over ice.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "None",
    glass: "Old-fashioned glass",
    ingredient: "<ul><li>Vodka 2 oz</li><li>Coffee liqueur 1 oz</li><li>Heavy cream or milk 1 oz</li></ul>",
    method: "<ol><li>Fill an old-fashioned glass with ice cubes.</li><li>Add vodka and coffee liqueur.</li><li>Top with heavy cream or milk.</li><li>Stir gently to combine.</li></ol>",
  },
  {
    name: "Zombie",
    history: "The Zombie is a classic cocktail that originated in the 1930s. It is known for its strong, fruity flavor and is made with various rums, fruit juices, and syrups.",
    base_wine: "Rum",
    skill: "Shake",
    garnish: "Mint sprig",
    glass: "Hurricane glass",
    ingredient: "<ul><li>Light rum 1.5 oz</li><li>Dark rum 1.5 oz</li><li>Apricot brandy 1 oz</li><li>Lime juice 1 oz</li><li>Pineapple juice 1 oz</li><li>Passion fruit syrup 1 oz</li><li>Angostura bitters 1 dash</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add all ingredients.</li><li>Shake well until chilled.</li><li>Strain into a hurricane glass filled with crushed ice.</li><li>Garnish with a mint sprig.</li></ol>",
  },
  {
    name: "Blue Hawaiian",
    history: "The Blue Hawaiian is a classic cocktail that originated in Hawaii in the 1950s. It is made with rum, blue curaçao, coconut cream, and pineapple juice.",
    base_wine: "Rum",
    skill: "Blend",
    garnish: "Pineapple wedge and cherry",
    glass: "Hurricane glass",
    ingredient: "<ul><li>White rum 1.5 oz</li><li>Blue curaçao 0.75 oz</li><li>Coconut cream 2 oz</li><li>Pineapple juice 3 oz</li></ul>",
    method: "<ol><li>Add rum, blue curaçao, coconut cream, and pineapple juice to a blender with crushed ice.</li><li>Blend until smooth.</li><li>Pour into a hurricane glass.</li><li>Garnish with a pineapple wedge and a cherry.</li></ol>",
  },
  {
    name: "Golden Dream",
    history: "The Golden Dream is a classic cocktail that originated in the 1950s. It is a creamy and sweet cocktail made with Galliano, triple sec, orange juice, and cream.",
    base_wine: "Galliano",
    skill: "Shake",
    garnish: "None",
    glass: "Cocktail glass",
    ingredient: "<ul><li>Galliano 0.75 oz</li><li>Triple sec 0.75 oz</li><li>Orange juice 0.75 oz</li><li>Heavy cream 0.75 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add all ingredients.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li></ol>",
  },
  {
    name: "Grasshopper",
    history: "The Grasshopper is a classic cocktail that originated in the 1920s. It is a sweet and creamy cocktail made with crème de menthe, crème de cacao, and cream.",
    base_wine: "Crème de menthe, Crème de cacao",
    skill: "Shake",
    garnish: "None",
    glass: "Cocktail glass",
    ingredient: "<ul><li>Crème de menthe 0.75 oz</li><li>Crème de cacao 0.75 oz</li><li>Heavy cream 0.75 oz</li></ul>",
    method: "<ol><li>Fill a shaker with ice cubes.</li><li>Add all ingredients.</li><li>Shake well until chilled.</li><li>Strain into a chilled cocktail glass.</li></ol>",
  },
  {
    name: "Margarita",
    history: "The Margarita is a classic cocktail that originated in Mexico. It is made with tequila, triple sec, and lime juice, often served with salt on the rim of the glass.",
    base_wine: "Tequila",
    skill: "Shake",
    garnish: "Salt rim, lime wheel or wedge",
    glass: "Margarita glass",
    ingredient: "<ul><li>Tequila 1.5 oz</li><li>Triple sec 0.5 oz</li><li>Freshly squeezed lime juice 1 oz</li></ul>",
    method: "<ol><li>Moisten the rim of a margarita glass with a lime wedge, then dip the rim in salt.</li><li>Fill a shaker with ice cubes.</li><li>Add tequila, triple sec, and lime juice.</li><li>Shake well until chilled.</li><li>Strain into the prepared glass over ice.</li><li>Garnish with a lime wheel or wedge.</li></ol>",
  },
  {
    name: "Sex on the Beach",
    history: "Sex on the Beach is a classic cocktail that gained popularity in the 1980s. It is made with vodka, peach schnapps, cranberry juice, and orange juice.",
    base_wine: "Vodka",
    skill: "Build",
    garnish: "Orange slice and cherry",
    glass: "Highball glass",
    ingredient: "<ul><li>Vodka 1.5 oz</li><li>Peach schnapps 0.5 oz</li><li>Cranberry juice 2 oz</li><li>Orange juice 2 oz</li></ul>",
    method: "<ol><li>Fill a highball glass with ice cubes.</li><li>Add vodka, peach schnapps, cranberry juice, and orange juice.</li><li>Stir gently to combine.</li><li>Garnish with an orange slice and a cherry.</li></ol>",
  },

]

ClassicCocktail.create(classic_cocktails)

puts "種子資料已創建!"
