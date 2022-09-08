class ItemService

    def self.conn 
        Faraday.new(url: "http://localhost:3000")  do |faraday|
            faraday.headers
        end
    end  

    def self.item_index
        response = conn.get("/api/v1/items")
        json = JSON.parse(response.body, symbolize_names: true)
    end 

    def self.item_show(id)
        response = conn.get("/api/v1/items/#{id}")
        json = JSON.parse(response.body, symbolize_names: true)
    end 

end 