class ItemIndexFacade

    def self.service 
        data = ItemService.item_index[:data]
    
        @items = data.map do |item|
            Item.new(item)
        end 
    end 

end 