require 'rails_helper'

feature 'When a user visit a machines page' do
  scenario 'they see a list of snacks' do
    name = 'Apple'
    name2 = 'Snickers'
    price = 1
    price2 = 3
    average =2
    sam = Owner.create!(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack = machine.snacks.create(name: name, price: price)
    snack2 = machine.snacks.create!(name: name2, price: price2)

    visit machine_path(machine)

    expect(page).to have_content('Average Cost of Item:')
    expect(page).to have_content(average)
  end
end




# ```
# As a user
# When I visit a specific vending machine page
# I also see an average price for all
# of the snacks in that machine
# ```
