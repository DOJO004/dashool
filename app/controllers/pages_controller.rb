class PagesController < ApplicationController
    def cocktail_map
        api_key = "AIzaSyBlVjjT_fjwhZCdnX4Z3bmQ6RpGgy4aphU"
        location = "25.0330,121.5654" # 這裡應該是客戶端傳遞的位置，你可以通過 params[:latitude] 和 params[:longitude] 來獲取
        radius = 5000
        url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=#{api_key}&location=#{location}&radius=#{radius}&keyword=bar")
        response = Net::HTTP.get(url)
        puts response
        @data = JSON.parse(response)
    end
end
