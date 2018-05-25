require 'rails_helper'

feature 'When a user visit a machines page' do
  scenario 'they see a list of snacks' do
    name = 'Apple'
    name2 = 'Snickers'
    sam = Owner.create!(name: "Sam's Snacks")
    machine = sam.machines.create(location: "Don's Mixed Drinks")
    snack = machine.snacks.create(name: name, price: 1)
    snack2 = machine.snacks.create!(name: name2, price: 1)


    visit machine_path(machine)

    expect(page).to have_content(name)
    expect(page).to have_content(name2)
  end
end
