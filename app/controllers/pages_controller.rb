class PagesController < ApplicationController
    def home
      @alcohol_category = ["whisky", "gin", "brandy"]
      @clasic_cocktails = [{
        name: "cocktail_name",
        likes: 10,
        cover_photo: "https://fakeimg.pl/200x200/"
      },{
        name: "cocktail_name2",
        likes: 12,
        cover_photo: "https://fakeimg.pl/200x200/"
      }
    ]
    end
  end
  