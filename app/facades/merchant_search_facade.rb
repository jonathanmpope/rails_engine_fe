class MerchantSearchFacade

    def self.service(search)
        data = MerchantService.find_all(search)[:data]
         
        @merchants = data.map do |merchant|
            Merchant.new(merchant)
        end  
    end 
end 