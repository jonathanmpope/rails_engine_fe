class MerchantService 

    def self.conn 
        Faraday.new(url: "http://localhost:3000")  do |faraday|
            faraday.headers
        end
    end 

    def self.merchant_index 
        response = conn.get("/api/v1/merchants")
        json = JSON.parse(response.body, symbolize_names: true)
    end 

    def self.merchant_show(id)
        response = conn.get("/api/v1/merchants/#{id}")
        json = JSON.parse(response.body, symbolize_names: true)
    end

    def self.merchant_items(id)
        response = conn.get("/api/v1/merchants/#{id}/items") 
        json = JSON.parse(response.body, symbolize_names: true)
    end

end 