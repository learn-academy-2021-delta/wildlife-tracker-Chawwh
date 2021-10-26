require 'rails_helper'


RSpec.describe Animal, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

    it 'has to have a name' do
      bingus = Animal.create latin_name: "Bingus americanus", kingdom: "Mammalia"
      expect(bingus.errors[:name]).to_not be_empty
    end

    it 'has to have a latin name' do
      bingus = Animal.create name: "Bingus", kingdom: "Mammalia"
      expect(bingus.errors[:latin_name]).to_not be_empty
    end

    it 'has to have a kingdom' do
      bingus = Animal.create name: "Bingus", latin_name: "Bingus americanus"
      expect(bingus.errors[:kingdom]).to_not be_empty
    end

    it 'has to have a different name and latin name' do

      chungus = = Animal.create name: "Bingus", latin_name: "Chungus looney toonus" , kingdom: "Cartoonis"
      expect
    end
end
