require 'rails_helper'

RSpec.describe "merchants index page", type: :feature do
    scenario 'has a list of merchants', :vcr do
        visit "/merchants"
        
        expect(page).to have_content("Merchants")
        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Klein, Rempel and Jones")
    end 

    scenario 'each merchant name is a link to a show page', :vcr do
        visit "/merchants"

        expect(page).to have_content("Schroeder-Jerde")
       
        click_on("Schroeder-Jerde")

        expect(current_path).to eq("/merchants/1")

        expect(page).to have_content("Schroeder-Jerde")
    end
    
    scenario 'each merchant show page has a list of items they sell', :vcr do
        visit "/merchants/1"

        expect(page).to have_content("Items this merchant sells")

        click_on("Items this merchant sells")

        expect(current_path).to eq("/merchants/1/items")

        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
        expect(page).to have_content("Item Provident At")
    end

    scenario 'has a list of items', :vcr do
        visit "/items"
        
        expect(page).to have_content("Items")
        expect(page).to have_content("Item Nemo Facere")
        expect(page).to have_content("Item Expedita Aliquam")
    end 

    it 'has a link to each item show page', :vcr do
        visit "/items"
        
        expect(page).to have_content("Items")
        expect(page).to have_content("Item Nemo Facere")
       
        click_on("Item Nemo Facere")

        expect(current_path).to eq("/items/4")
    end
    
    scenario 'has a search api feature for merchants', :vcr do
        visit "/merchants"
        
        fill_in "search", with: "Jerde"
        click_button("Search")

        expect(page).to have_content("Schroeder-Jerde")
        expect(page).to have_content("Koch, Wolf and Jerde")
        expect(page).to have_content("Rice, Jerde and White")
    end
end 