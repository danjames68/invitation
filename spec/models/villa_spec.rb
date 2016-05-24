require 'rails_helper'

describe "unqiue slug title" do
  
  it "generates a slug when it's created" do
    villa = Villa.create!(villa_attributes(name: "Q's Clifftop Villa"))

    expect(villa.slug).to eq("q-s-clifftop-villa")
  end

  it "requires a unique title" do
    villa1 = Villa.create!(villa_attributes)

    villa2 = Villa.new(name: villa1.title)
    villa2.valid? # populates errors
    expect(villa2.errors[:name].first).to eq("has already been taken")
  end

  it "requires a unique slug" do
    villa1 = Villa.create!(villa_attributes)

    villa2 = Villa.new(slug: villa1.slug)
    villa2.valid? # populates errors
    expect(villa2.errors[:slug].first).to eq("has already been taken")
  end
end