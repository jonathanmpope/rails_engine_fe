class MerchantItemsController < ApplicationController
    def index 
        @items = MerchantItemsFacade.service(params[:merchant_id])
    end 
end 