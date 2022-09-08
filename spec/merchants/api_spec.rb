require 'rails_helper'

RSpec.describe "merchants index page", type: :feature do
    it 'has a list of merchants' do
        visit "/merchants"
        
        expect(page).to have_content("Merchants")
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
    end 

    it 'each merchant name is a link to a show page' do
        visit "/merchants"

        expect(page).to have_content("Schroeder-Jerde")
       
        click_on("Schroeder-Jerde")

        expect(current_path).to eq("/merchants/1")

        expect(page).to have_content("Schroeder-Jerde")
    end
    
    it 'each merchant show page has a list of items they sell' do
        visit "/merchants/1"

        expect(page).to have_content("Items this merchant sells")

        click_on("Items this merchant sells")

        expect(current_path).to eq("/merchants/1/items")

        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
    end

    it 'has a list of items' do
        visit "/items"
        
        expect(page).to have_content("Items")
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
    end 

    it 'has a link to each item show page' do
        visit "/items"
        
        expect(page).to have_content("Items")
        expect(page).to have_content("Item Nemo Facere")
       
        click_on("Item Nemo Facere")

        expect(current_path).to eq("/items/4")
    end 
end 