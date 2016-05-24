require 'rails_helper'

describe "viewing an individual villa" do

  it "has an SEO friendly URL" do
    villa = Villa.create!(villa_attributes(name: "Q's Clifftop Villa"))
  
    visit villa_url(villa)
  
    expect(current_path.to_eq("/villas/q-s-clifftop-villa"))
  end
  
end