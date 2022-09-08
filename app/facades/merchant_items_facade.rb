class MerchantItemsFacade

    def self.service(id)
        data = MerchantService.merchant_items(id)[:data]
    
        @items = data.map do |item|
            Item.new(item)
        end 
    end 
end 