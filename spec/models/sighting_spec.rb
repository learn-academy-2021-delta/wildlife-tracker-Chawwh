require 'rails_helper'

RSpec.describe Sighting, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it 'has to have a date' do
    monke = Sighting.create latitude: "42.5256° N", longitude: "124.6446° W"
    expect(monke.errors[:date]).to_not be_empty
  end

  it 'has to have a latitude' do
    monke = Sighting.create date: "2019-10-26T00:20:19.000Z", longitude: "124.6446° W"
    expect(monke.errors[:latitude]).to_not be_empty
  end

  it 'has to have a longitude' do
    monke = Sighting.create date: "2019-10-26T00:20:19.000Z", latitude: "42.5256° N"
    expect(monke.errors[:longitude]).to_not be_empty
  end


end
