class Bicycle < ApplicationRecord
  has_many :payments
  has_many :users, through: :payments

    def self.newimages
        request_url = URI.encode("https://api.serpwow.com/live/search?api_key=1D555A9CA81341689EAD2D2E86FD3C52&q=bikes&search_type=images&_ga=2.216904086.1230371667.1626236287-562261475.1626236287&_gac=1.125980415.1626236287.CjwKCAjw87SHBhBiEiwAukSeUYYv_bAmxlv6APX0jK_1WzzUmA2LVybZjhyK8AXEZHjOMP-75XvmAhoCGj0QAvD_BwE")
        response = `curl "#{request_url}"`
        json = JSON.parse(response)
        data = json["image_results"]
        data.each do |d|
         bicycle = Bicycle.new()
         bicycle.urlpicture = d["image"]
         bicycle.brand = d["brand"]
         bicycle.save
        end 
      end
   end


    

