require 'rails_helper'

describe "Viewing the list of the users" do
  
  it "shows the users" do
    user1 = User.create!( name: "larry",   
                          email: "larry@example.com",
                          password: "secret",
                          password_confirmation: "secret")
    user2 = User.create!( name: "Moe",   
                          email: "moe@example.com",
                          password: "secret",
                          password_confirmation: "secret")
    user3 = User.create!( name: "Curly", 
                          email: "curly@example.com",
                          password: "secret",
                          password_confirmation: "secret")  
    
    visit users_url
    
    expect(page).to have_link(user1.name)
    expect(page).to have_link(user2.name)
    expect(page).to have_link(user3.name)
  end
  
end