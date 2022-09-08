class MerchantsController < ApplicationController 

    def index 
        @merchants = MerchantsIndexFacade.service
    end 

    def show 
        @merchant = MerchantShowFacade.service(params[:id])
    end 
end 