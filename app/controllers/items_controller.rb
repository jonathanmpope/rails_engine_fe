class ItemsController < ApplicationController

    def index 
        @items = ItemIndexFacade.service 
    end 

    def show  
        @item = ItemShowFacade.service(params[:id])
    end 

end 