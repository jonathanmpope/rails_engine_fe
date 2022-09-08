class ItemShowFacade

    def self.service(id)
        data = ItemService.item_show(id)[:data]
    
        @item = Item.new(data)
    end 

end 