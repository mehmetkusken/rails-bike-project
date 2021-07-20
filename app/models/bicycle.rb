class Bicycle < ApplicationRecord
    
# 1. Api modeli

   # def self.newimages
    #    request_url = URI.encode("https://api.serpwow.com/live/search?api_key=1D555A9CA81341689EAD2D2E86FD3C52&q=bikes&search_type=images&_ga=2.216904086.1230371667.1626236287-562261475.1626236287&_gac=1.125980415.1626236287.CjwKCAjw87SHBhBiEiwAukSeUYYv_bAmxlv6APX0jK_1WzzUmA2LVybZjhyK8AXEZHjOMP-75XvmAhoCGj0QAvD_BwE")
     #   response = `curl "#{request_url}"`
    #    json = JSON.parse(response)
    #    data = json["image_results"][0]

    #    data["image"] = Bike.urlpictures
    #    data["title"] = Bike.title 
    #    data["link"] = Bike.link
    #    data["height"] = Bike.height
    #    data["description"] = Bike.description
    #    data["brand"] =  Bike.brand     
    #end

# 2. Api modeli
    #attr_reader :response , :data
    #def initialize
      #  request_url = URI.encode("https://api.serpwow.com/live/search?api_key=1D555A9CA81341689EAD2D2E86FD3C52&q=bikes&search_type=images&_ga=2.216904086.1230371667.1626236287-562261475.1626236287&_gac=1.125980415.1626236287.CjwKCAjw87SHBhBiEiwAukSeUYYv_bAmxlv6APX0jK_1WzzUmA2LVybZjhyK8AXEZHjOMP-75XvmAhoCGj0QAvD_BwE")
       #    response = `curl "#{request_url}"`
        #   @response = JSON.parse(response)
       #    @data = @response["image_results"]
          
    #end
   
    #def to_bike
       # self.@data.map do |d|
         #   Bike.find_by(position: d["id"]) do |newbike|
        #           newbike.urlpictures = d["image"]
         #          newbike.title = d["title"]
         #          newbike.link = d["link"]
          #         newbike.width = d["width"]
          #         newbike.height = d["height"]
           #        newbike.description = d["description"]
           #        newbike.brand = d["brand"]
           #    end
           #end
      # end
    
end
