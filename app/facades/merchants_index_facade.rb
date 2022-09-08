class MerchantsIndexFacade

    def self.service
        data = MerchantService.merchant_index[:data]

        @merchants = data.map do |merchant|
            Merchant.new(merchant)
        end  
    end 
end 