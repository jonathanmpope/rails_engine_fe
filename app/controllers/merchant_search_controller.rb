class MerchantSearchController < ApplicationController
    def index
        @merchants = MerchantSearchFacade.service(params[:search])
    end 
end 