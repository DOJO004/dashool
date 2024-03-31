# frozen_string_literal: true

Cocktail.delete_all

cocktails = [
  {
    name: "Alexander",
    introduce: "Alexander is a classic creamy cocktail known for its smooth texture and sweet flavor.",
    type_of: "Classic",
    drink_style: "Creamy",
    skill: "Medium difficulty",
    history: "The Alexander cocktail first appeared in New York in 1915.",
    base_wine: "Brandy"
  },
  {
    name: "Americano",
    introduce: "Americano is a classic cocktail known for its bittersweet flavor and refreshing taste.",
    type_of: "Classic",
    drink_style: "Bittersweet",
    skill: "Easy",
    history: "The Americano cocktail dates back to the 1860s and is believed to have originated in Italy.",
    base_wine: "Campari"
  },
  {
      name: "Angel Face",
      introduce: "Angel Face is a classic cocktail known for its delicate and floral flavors, combining gin, apricot brandy, and Calvados.",
      type_of: "Classic",
      drink_style: "Floral",
      skill: "Medium difficulty",
      history: "The Angel Face cocktail is believed to have originated in the 1920s.",
      base_wine: "Gin"
  },
  {
      name: "Angel Face",
      introduce: "Angel Face is a classic cocktail known for its delicate and floral flavors, combining gin, apricot brandy, and Calvados.",
      type_of: "Classic",
      drink_style: "Floral",
      skill: "Medium difficulty",
      history: "The Angel Face cocktail is believed to have originated in the 1920s.",
      base_wine: "Gin"
  },
  {
      name: "Aviation",
      introduce: "Aviation is a classic cocktail known for its unique flavor profile, combining gin, maraschino liqueur, crème de violette, and lemon juice.",
      type_of: "Classic",
      drink_style: "Unique",
      skill: "Medium difficulty",
      history: "The Aviation cocktail was created in the early 20th century and became popular during the cocktail renaissance.",
      base_wine: "Gin"
  },
  {
    name: "John Collins",
    introduce: "John Collins is a classic cocktail similar to a Tom Collins, made with gin, lemon juice, sugar, and soda water, known for its refreshing and citrusy flavor.",
    type_of: "Classic",
    drink_style: "Refreshing",
    skill: "Easy",
    history: "The John Collins cocktail is believed to have originated in the 19th century and is named after the headwaiter at Limmer's Old House in London.",
    base_wine: "Gin"
  },
  {
      name: "Bellini",
      introduce: "Bellini is a classic Italian cocktail made with Prosecco and peach purée, known for its fruity and sparkling taste.",
      type_of: "Classic",
      drink_style: "Fruity",
      skill: "Easy",
      history: "The Bellini cocktail was created in Venice, Italy, in the 1930s.",
      base_wine: "Prosecco"
  },
  {
      name: "Between the Sheets",
      introduce: "Between the Sheets is a classic cocktail featuring white rum, brandy, triple sec, and lemon juice, known for its strong and citrusy flavor.",
      type_of: "Classic",
      drink_style: "Citrusy",
      skill: "Medium difficulty",
      history: "The Between the Sheets cocktail is believed to have originated during the Prohibition era.",
      base_wine: "Rum"
  },
  {
      name: "Black Russian",
      introduce: "Black Russian is a classic cocktail made with vodka and coffee liqueur, known for its rich and smooth taste.",
      type_of: "Classic",
      drink_style: "Rich",
      skill: "Easy",
      history: "The Black Russian cocktail was created in the 1940s and gained popularity during the mid-20th century.",
      base_wine: "Vodka"
  },
  {
      name: "Bloody Mary",
      introduce: "Bloody Mary is a classic cocktail made with vodka, tomato juice, and various spices and flavorings, known for its savory and spicy taste.",
      type_of: "Classic",
      drink_style: "Savory",
      skill: "Easy",
      history: "The Bloody Mary cocktail has uncertain origins but gained popularity in the 20th century as a brunch favorite.",
      base_wine: "Vodka"
  },
  {
      name: "Boulevardier",
      introduce: "Boulevardier is a classic cocktail similar to a Negroni but made with bourbon or rye whiskey, Campari, and sweet vermouth.",
      type_of: "Classic",
      drink_style: "Bittersweet",
      skill: "Medium difficulty",
      history: "The Boulevardier cocktail is believed to have originated in Paris during the 1920s.",
      base_wine: "Bourbon or Rye Whiskey"
  },
  {
      name: "Cosmopolitan",
      introduce: "Cosmopolitan is a classic cocktail made with vodka, cranberry juice, triple sec, and lime juice, known for its fruity and tangy flavor.",
      type_of: "Classic",
      drink_style: "Fruity",
      skill: "Easy",
      history: "The Cosmopolitan cocktail gained popularity in the 1990s and became a symbol of cocktail culture.",
      base_wine: "Vodka"
  },
  {
      name: "Cuba Libre",
      introduce: "Cuba Libre is a classic cocktail made with rum, cola, and lime juice, known for its refreshing and simple taste.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Cuba Libre cocktail is said to have originated in Cuba or the United States around the early 20th century.",
      base_wine: "Rum"
  },
  {
      name: "Daiquiri",
      introduce: "Daiquiri is a classic cocktail made with rum, lime juice, and sugar, known for its refreshing and citrusy flavor.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Daiquiri cocktail originated in Cuba and gained popularity during the early 20th century.",
      base_wine: "Rum"
  },
  {
      name: "Espresso Martini",
      introduce: "Espresso Martini is a classic cocktail made with vodka, coffee liqueur, and freshly brewed espresso, known for its rich and caffeinated flavor.",
      type_of: "Classic",
      drink_style: "Rich",
      skill: "Medium difficulty",
      history: "The Espresso Martini cocktail was created in the 1980s by a London bartender.",
      base_wine: "Vodka"
  },
  {
      name: "French 75",
      introduce: "French 75 is a classic cocktail made with gin, champagne, lemon juice, and sugar, known for its sparkling and citrusy flavor.",
      type_of: "Classic",
      drink_style: "Sparkling",
      skill: "Medium difficulty",
      history: "The French 75 cocktail is believed to have originated in France during World War I.",
      base_wine: "Gin"
  },
  {
      name: "Gin Fizz",
      introduce: "Gin Fizz is a classic cocktail made with gin, lemon juice, sugar, and soda water, known for its refreshing and fizzy taste.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Gin Fizz cocktail has a long history dating back to the 19th century and is associated with New Orleans.",
      base_wine: "Gin"
  },
  {
      name: "Grasshopper",
      introduce: "Grasshopper is a classic cocktail made with crème de menthe, crème de cacao, and cream, known for its minty and chocolatey flavor.",
      type_of: "Classic",
      drink_style: "Minty",
      skill: "Easy",
      history: "The Grasshopper cocktail is believed to have been created in New Orleans in the early 20th century.",
      base_wine: "Crème de Menthe"
  },
  {
      name: "Hemingway Special",
      introduce: "Hemingway Special is a classic cocktail made with rum, grapefruit juice, maraschino liqueur, and lime juice, known for its tart and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Tart",
      skill: "Medium difficulty",
      history: "The Hemingway Special cocktail is associated with the writer Ernest Hemingway and his love for cocktails with a strong kick.",
      base_wine: "Rum"
  },
  {
      name: "Horse's Neck",
      introduce: "Horse's Neck is a classic cocktail made with brandy, ginger ale, and Angostura bitters, known for its spicy and aromatic flavor.",
      type_of: "Classic",
      drink_style: "Spicy",
      skill: "Easy",
      history: "The Horse's Neck cocktail is named after its long, curling lemon peel garnish that resembles a horse's neck.",
      base_wine: "Brandy"
  },
  {
      name: "Irish Coffee",
      introduce: "Irish Coffee is a classic cocktail made with hot coffee, Irish whiskey, sugar, and cream, known for its warming and comforting flavor.",
      type_of: "Classic",
      drink_style: "Hot",
      skill: "Easy",
      history: "Irish Coffee is said to have been invented in Ireland in the 1940s and became popular in the United States.",
      base_wine: "Irish Whiskey"
  },
  {
      name: "Last Word",
      introduce: "Last Word is a classic cocktail made with gin, green Chartreuse, maraschino liqueur, and lime juice, known for its herbal and complex flavor.",
      type_of: "Classic",
      drink_style: "Herbal",
      skill: "Medium difficulty",
      history: "The Last Word cocktail originated in Detroit during the Prohibition era and gained popularity in the cocktail revival.",
      base_wine: "Gin"
  },
  {
      name: "Long Island Iced Tea",
      introduce: "Long Island Iced Tea is a classic cocktail made with vodka, rum, tequila, gin, triple sec, lemon juice, sugar, and cola, known for its strong and boozy flavor.",
      type_of: "Classic",
      drink_style: "Boozy",
      skill: "Easy",
      history: "The Long Island Iced Tea cocktail is believed to have originated in the 1970s and gained popularity as a party drink.",
      base_wine: "Vodka, Rum, Tequila, Gin"
  },
  {
      name: "Mai Tai",
      introduce: "Mai Tai is a classic tropical cocktail made with rum, lime juice, orgeat syrup, and orange liqueur, known for its fruity and exotic flavor.",
      type_of: "Classic",
      drink_style: "Tropical",
      skill: "Medium difficulty",
      history: "The Mai Tai cocktail was created in the 1940s and gained popularity as a tiki drink.",
      base_wine: "Rum"
  },
  {
      name: "Margarita",
      introduce: "Margarita is a classic cocktail made with tequila, triple sec, and lime juice, served with salt on the rim of the glass, known for its tangy and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Tangy",
      skill: "Easy",
      history: "The Margarita cocktail is believed to have originated in Mexico in the 1930s or 1940s.",
      base_wine: "Tequila"
  },
  {
      name: "Martini",
      introduce: "Martini is a classic cocktail made with gin and vermouth, served either 'dry' (with less vermouth) or 'wet' (with more vermouth), known for its elegant and sophisticated flavor.",
      type_of: "Classic",
      drink_style: "Elegant",
      skill: "Medium difficulty",
      history: "The Martini cocktail has a long history dating back to the 19th century and has been associated with elegance and refinement.",
      base_wine: "Gin"
  },
  {
      name: "Mimosa",
      introduce: "Mimosa is a classic brunch cocktail made with champagne and orange juice, known for its light and bubbly flavor.",
      type_of: "Classic",
      drink_style: "Bubbly",
      skill: "Easy",
      history: "The Mimosa cocktail is said to have originated in France in the 1920s.",
      base_wine: "Champagne"
  },
  {
      name: "Mint Julep",
      introduce: "Mint Julep is a classic Southern cocktail made with bourbon, mint leaves, sugar, and water, served over crushed ice, known for its refreshing and minty flavor.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Mint Julep cocktail has origins in the Southern United States and is associated with the Kentucky Derby.",
      base_wine: "Bourbon"
  },
  {
      name: "Mojito",
      introduce: "Mojito is a classic Cuban cocktail made with white rum, mint leaves, lime juice, sugar, and soda water, known for its refreshing and minty flavor.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Mojito cocktail has roots in Cuba and gained popularity as a summer drink.",
      base_wine: "White Rum"
  },
  {
      name: "Moscow Mule",
      introduce: "Moscow Mule is a classic cocktail made with vodka, ginger beer, and lime juice, served in a copper mug, known for its spicy and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Spicy",
      skill: "Easy",
      history: "The Moscow Mule cocktail was created in the 1940s and gained popularity as a trendy drink served in copper mugs.",
      base_wine: "Vodka"
  },
  {
      name: "Negroni",
      introduce: "Negroni is a classic cocktail made with equal parts gin, Campari, and sweet vermouth, known for its bold and bittersweet flavor.",
      type_of: "Classic",
      drink_style: "Bittersweet",
      skill: "Medium difficulty",
      history: "The Negroni cocktail is believed to have originated in Italy in the early 20th century.",
      base_wine: "Gin"
  },
  {
      name: "New York Sour",
      introduce: "New York Sour is a classic cocktail similar to a Whiskey Sour but with a float of red wine on top, known for its sweet and tart flavor.",
      type_of: "Classic",
      drink_style: "Sweet and tart",
      skill: "Medium difficulty",
      history: "The New York Sour cocktail has variations dating back to the 19th century.",
      base_wine: "Whiskey"
  },
  {
      name: "Old Fashioned",
      introduce: "Old Fashioned is a classic cocktail made with bourbon or rye whiskey, sugar, bitters, and a twist of citrus peel, known for its strong and traditional flavor.",
      type_of: "Classic",
      drink_style: "Strong",
      skill: "Medium difficulty",
      history: "The Old Fashioned cocktail dates back to the 19th century and is considered one of the original cocktails.",
      base_wine: "Bourbon or Rye Whiskey"
  },
  {
      name: "Penicillin",
      introduce: "Penicillin is a modern classic cocktail made with Scotch whisky, honey-ginger syrup, lemon juice, and a float of smoky whisky, known for its complex and smoky flavor.",
      type_of: "Classic",
      drink_style: "Smoky",
      skill: "Medium difficulty",
      history: "The Penicillin cocktail was created in New York City in the early 21st century and has become popular in cocktail bars.",
      base_wine: "Scotch Whisky"
  },
  {
      name: "Piña Colada",
      introduce: "Piña Colada is a classic tropical cocktail made with rum, coconut cream, and pineapple juice, known for its creamy and fruity flavor.",
      type_of: "Classic",
      drink_style: "Creamy and fruity",
      skill: "Easy",
      history: "The Piña Colada cocktail is said to have originated in Puerto Rico in the 1950s.",
      base_wine: "Rum"
  },
  {
      name: "Pisco Sour",
      introduce: "Pisco Sour is a classic cocktail from Peru made with pisco, lime juice, simple syrup, egg white, and Angostura bitters, known for its frothy texture and tart flavor.",
      type_of: "Classic",
      drink_style: "Frothy and tart",
      skill: "Medium difficulty",
      history: "The Pisco Sour cocktail is believed to have originated in Lima, Peru, in the early 20th century.",
      base_wine: "Pisco"
  },
  {
      name: "Sea Breeze",
      introduce: "Sea Breeze is a classic cocktail made with vodka, cranberry juice, and grapefruit juice, known for its fruity and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Fruity and refreshing",
      skill: "Easy",
      history: "The Sea Breeze cocktail gained popularity in the 1970s and is associated with beach-themed drinks.",
      base_wine: "Vodka"
  },
  {
      name: "Sex on the Beach",
      introduce: "Sex on the Beach is a classic cocktail made with vodka, peach schnapps, cranberry juice, and orange juice, known for its fruity and tropical flavor.",
      type_of: "Classic",
      drink_style: "Fruity and tropical",
      skill: "Easy",
      history: "The Sex on the Beach cocktail is said to have originated in Florida in the 1980s.",
      base_wine: "Vodka"
  },
  {
      name: "Screwdriver",
      introduce: "Screwdriver is a classic cocktail made with vodka and orange juice, known for its simple and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Refreshing",
      skill: "Easy",
      history: "The Screwdriver cocktail has been popular since the mid-20th century and is often associated with brunches.",
      base_wine: "Vodka"
  },
  {
      name: "Singapore Sling",
      introduce: "Singapore Sling is a classic cocktail from Singapore made with gin, cherry liqueur, Cointreau, Benedictine, pineapple juice, lime juice, and grenadine, known for its complex and fruity flavor.",
      type_of: "Classic",
      drink_style: "Complex and fruity",
      skill: "Medium difficulty",
      history: "The Singapore Sling cocktail was created in the early 20th century at the Raffles Hotel in Singapore.",
      base_wine: "Gin"
  },
  {
      name: "Tequila Sunrise",
      introduce: "Tequila Sunrise is a classic cocktail made with tequila, orange juice, and grenadine syrup, known for its colorful and fruity appearance.",
      type_of: "Classic",
      drink_style: "Fruity and colorful",
      skill: "Easy",
      history: "The Tequila Sunrise cocktail gained popularity in the 1970s and became an iconic drink of the era.",
      base_wine: "Tequila"
  },
  {
      name: "Vesper",
      introduce: "Vesper is a classic cocktail made with gin, vodka, and Lillet Blanc, known for its strong and sophisticated flavor.",
      type_of: "Classic",
      drink_style: "Strong and sophisticated",
      skill: "Medium difficulty",
      history: "The Vesper cocktail is famously associated with James Bond and was created by Ian Fleming.",
      base_wine: "Gin, Vodka"
  },
  {
      name: "Whiskey Sour",
      introduce: "Whiskey Sour is a classic cocktail made with whiskey, lemon juice, sugar, and optionally egg white, known for its tart and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Tart and refreshing",
      skill: "Easy",
      history: "The Whiskey Sour cocktail has been enjoyed since the mid-19th century and is a staple of cocktail culture.",
      base_wine: "Whiskey"
  },
  {
      name: "White Russian",
      introduce: "White Russian is a classic cocktail made with vodka, coffee liqueur, and cream or milk, known for its creamy and sweet flavor.",
      type_of: "Classic",
      drink_style: "Creamy and sweet",
      skill: "Easy",
      history: "The White Russian cocktail gained popularity in the mid-20th century and is associated with the character 'The Dude' from the movie 'The Big Lebowski.'",
      base_wine: "Vodka"
  },
  {
      name: "Zombie",
      introduce: "Zombie is a classic cocktail made with rum, fruit juices, and various liqueurs, known for its strong and fruity flavor.",
      type_of: "Classic",
      drink_style: "Strong and fruity",
      skill: "Medium difficulty",
      history: "The Zombie cocktail was created by Donn Beach in the 1930s and became a signature drink at tiki bars.",
      base_wine: "Rum"
  },
  {
      name: "Blue Hawaiian",
      introduce: "Blue Hawaiian is a classic tropical cocktail made with rum, blue curaçao, coconut cream, and pineapple juice, known for its blue color and tropical flavor.",
      type_of: "Classic",
      drink_style: "Tropical",
      skill: "Easy",
      history: "The Blue Hawaiian cocktail is said to have originated in Hawaii in the 1950s.",
      base_wine: "Rum"
  },
  {
      name: "Golden Dream",
      introduce: "Golden Dream is a classic cocktail made with Galliano, orange liqueur, orange juice, and cream, known for its golden color and creamy texture.",
      type_of: "Classic",
      drink_style: "Creamy and golden",
      skill: "Easy",
      history: "The Golden Dream cocktail gained popularity in the 1960s and is often associated with creamy cocktails.",
      base_wine: "Galliano"
  },
  {
      name: "Grasshopper",
      introduce: "Grasshopper is a classic cocktail made with crème de menthe, crème de cacao, and cream, known for its minty and chocolatey flavor.",
      type_of: "Classic",
      drink_style: "Minty and chocolatey",
      skill: "Easy",
      history: "The Grasshopper cocktail is believed to have been created in New Orleans in the early 20th century.",
      base_wine: "Crème de Menthe"
  },
  {
      name: "Margarita",
      introduce: "Margarita is a classic cocktail made with tequila, triple sec, and lime juice, served with salt on the rim of the glass, known for its tangy and refreshing flavor.",
      type_of: "Classic",
      drink_style: "Tangy and refreshing",
      skill: "Easy",
      history: "The Margarita cocktail is believed to have originated in Mexico in the 1930s or 1940s.",
      base_wine: "Tequila"
  },

  {
      name: "Sex on the Beach",
      introduce: "Sex on the Beach is a classic cocktail made with vodka, peach schnapps, cranberry juice, and orange juice, known for its fruity and tropical flavor.",
      type_of: "Classic",
      drink_style: "Fruity and tropical",
      skill: "Easy",
      history: "The Sex on the Beach cocktail is said to have originated in Florida in the 1980s.",
      base_wine: "Vodka"
  }
]

cocktails.each do |cocktail|
  Cocktail.create(cocktail)
end

puts "種子資料已創建!"
