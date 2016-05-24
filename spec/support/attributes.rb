def user_attributes(overrides = {})
  {
    name: "Example User",
    email: "user@example.com",
    password: "secret",
    password_confirmation: "secret"
  }.merge(overrides)
end

def villa_attributes(overrides = {})
  {
    name: "Ragnana",
    reference: "33",
    address: "Radicondoli, Siena",
    strapline: "Villa family house",
    description: "A village family house with a pool",
    image_file: "ragnana.jpg",
    sleeps: "8",
    area_id: "2",
    latitude: "10.2234",
    longitude: "52.3432",
    owner_id: "34",
    original_name: "Old Ragnana",
    accommodation: "In to front door, turn left",
    around_the_villa: "Radicondoli is a lovely village",
    number_of_bedrooms: "4",
    bed_and_bathrooms: "3 doubles, 1 twin",
    rental_day: "Saturday"
  }
end