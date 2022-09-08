class MerchantShowFacade

    def self.service(id)
        data = MerchantService.merchant_show(id)[:data]
         
        @merchant = Merchant.new(data)
    end 
end 