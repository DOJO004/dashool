module PagesHelper
    def search_bars(api_key, location, radius = 5000)
      url = URI("https://maps.googleapis.com/maps/api/place/nearbysearch/json?key=#{api_key}&location=#{location}&radius=#{radius}&keyword=bar")
      response = Net::HTTP.get(url)
      data = JSON.parse(response)
          puts data["results"]
  
      if data["status"] == "OK"
        data["results"]
      else
        []
      end
    end
end
