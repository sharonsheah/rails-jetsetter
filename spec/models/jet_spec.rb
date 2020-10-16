require 'rails_helper'

RSpec.describe Jet, type: :model do
  describe "name" do
    it "has a name" do
      jet = Jet.new(name: "Mojito")
      expect(jet.name).to eq("Mojito")
    end

    it "name cannot be blank" do
      jet = Jet.new(name: "")
      expect(jet).not_to be_valid
    end
  
    it "name cannot have less than 3 characters" do
      jet = Jet.new(name: "No")
      expect(jet).not_to be_valid
    end
    
    # it "name is unique" do
    #   existing_jet = Jet.all.first
    #   jet = Jet.new(name: existing_jet.name)
    #   expect(jet).not_to be_valid
    # end
  end
  
  describe "description" do
    it "has a description" do
      jet = Jet.new(description: "Mojito")
      expect(jet.description).to eq("Mojito")
    end
    
    it "description cannot be blank" do
      jet = Jet.new(description: "")
      expect(jet).not_to be_valid
    end
  
    it "description cannot have less than 3 characters" do
      jet = Jet.new(description: "No")
      expect(jet).not_to be_valid
    end
  end

  describe "capacity" do
    it "has a capacity" do
      jet = Jet.new(capacity: 5)
      expect(jet.capacity).to eq(5)
    end
    
    it "capacity cannot be blank" do
      jet = Jet.new(capacity: "")
      expect(jet).not_to be_valid
    end
  
    it "capacity has to be a number" do
      jet = Jet.new(capacity: "No")
      expect(jet).not_to be_valid
    end
  end

  it "has a pilot" do
    jet = Jet.new(pilot_name: "Test Pilot")
    expect(jet.pilot_name).to eq("Test Pilot")
  end

  it "has an origin" do
    jet = Jet.new(origin: "Test origin")
    expect(jet.origin).to eq("Test origin")
  end

  it "has a price" do
    jet = Jet.new(price: 1000)
    expect(jet.price).to eq(1000)
  end

  it "price has to be a number" do
    jet = Jet.new(price: "No")
    expect(jet).not_to be_valid
  end
end





# it "has many doses" do
#   cocktail = Cocktail.new(valid_attributes)
#   expect(cocktail).to respond_to(:doses)
#   expect(cocktail.doses.count).to eq(0)
# end

# it "should destroy child doses when destroying self" do
#   cocktail = Cocktail.create!(valid_attributes)
#   ingredient = Ingredient.create!(name: "ice")
#   cocktail.doses.create(ingredient: ingredient, description: "A lot!")
#   expect { cocktail.destroy }.to change { Dose.count }.from(1).to(0)
# end

# it "has many ingredients" do
#   cocktail = Cocktail.create!(valid_attributes)
#   expect(cocktail).to respond_to(:ingredients)
#   expect(cocktail.ingredients.count).to eq(0)

#   ingredient = Ingredient.create!(name: "ice")
#   cocktail.doses.create(ingredient: ingredient, description: "A lot!")
#   expect(cocktail.ingredients.count).to eq(1)
# end