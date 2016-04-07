# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Owner.create!([
  {
    title: "Sig.",
    name: "Ottavio",
    surname: "Muzi-Falconi",
    company: "Azienda Agricola Pian della Chiesa",
    address: "Pian della Chiesa, Zanego",
    postcode: "80400",
    country: "Italy",
    phone: "05846950030",
    mobile: "3396673847",
    email: "ottavio@example.com",
    language: "english",
    notes: "doobeboododod ,.d.d,dddod",
    private_notes: "lovely wine."
  },
  {
    title: "Ms.",
    name: "AnnMarie",
    surname: "Hobbs",
    company: "Valdambra",
    address: "Pieve a Presciano",
    postcode: "80400",
    country: "Italy",
    phone: "05846950030",
    mobile: "3396673847",
    email: "annmarie@example.com",
    language: "italian",
    notes: "doobeboododod ,.d.d,dddod",
    private_notes: "lovely wine."
  },
  {
    title: "Mme.",
    name: "Rosie",
    surname: "Jackson",
    company: "Cabrieres d'Avignon",
    address: "Cab d'Avignon, Avignon",
    postcode: "45110",
    country: "France",
    phone: "0596993302",
    mobile: "7748583939",
    email: "ottavio@example.com",
    language: "french",
    notes: "what can i say - payment terms on the nail",
    private_notes: "lovely wine."
  }, 
])


Villa.create!([
  { 
    name: "Ragnana",
    reference: 33,
    address: "Radicondoli, Siena",
    strapline: "Charming old farmhouse on the edge of a village",
    description: "Just outside the village of Radicondoli, facing across rolling, open countryside, stands.",
    image_file: "dimora.jpg",
    sleeps: 8,
    area_id: 1,
    latitude: 43.259334,
    longitude: 11.045852,
    owner_id: 1
  },
  { 
    name: "Olivo",
    reference: 35,
    address: "Radicondoli, Siena",
    strapline: "Charming apartment in old farmhouse on the edge of a village",
    description: "In an inspiring panoramic position, facing across endless unspoilt countryside dotted with vineyards, forests and dramatic hills, Bellavista is a restored stone farmhouse below the Tuscan hill village of Radicondoli, 500 metres down a track from a country road. The present owners have restored olive groves and renewed vineyards, producing excellent wine and olive oil. Even more care has gone into the three apartments. The swimming pool is on a terrace with never-ending views over the Tuscan countryside. The custodian lives nearby and is very conscientious and helpful.",
    image_file: "poggio-landi.jpg",
    sleeps: 4,
    area_id: 2,
    latitude: 43.26481,
    longitude: 11.036594,
    owner_id: 2
  },
  { 
    name: "Brogino",
    reference: 43,
    address: "Sambuca, Tavarnelle",
    strapline: "Charming old farmhouse on the edge of a village",
    description: "Brogino is a large country house in Chianti, its already lyrical setting enhanced by the spectacular medieval Abbey - Badia di Passignano - which faces it from a mile away across vine and olive clothed hills.",
    image_file: "argentone.jpg",
    sleeps: 10,
    area_id: 3,
    latitude: 43.585902,
    longitude: 11.246137,
    owner_id: 3
  }

  ])
  
Collection.create!([
    {
      name: "Great for families",
      description: "Ancient hamlets and rambling farmhouses are just some of our properties that families with children come back to year after year. Places where there are often other families with children, and new friendships are easily made.",
      image_file: "families.jpg"
    },
    {
      name: "Private Villas",
      description: "Some houses are on their own – either magnificently isolated, or simply private. They range from large renaissance villas close to Siena or Florence to beautifully converted farmhouses in rolling landscape. ",
      image_file: "private-villa.jpg"
    },
    {
      name: "Romantic Retreat",
      description: "Some properties are particularly suited to finding time for yourselves. Some of the nicest places are small apartments in medieval hill villages, with everything, even another bottle of Prosecco, on your doorstep – others are hidden away! ",
      image_file: "romantic.jpg"
    },
    {
      name: "Beautiful Villas",
      description: " Views to lift the spirit, heal the soul and to put the world to rights. what looks best while sipping prosecco – here are our favourite properties with views.",
      image_file: "views.jpg"
    }, 
  ])

Type.create!([
    {
     villa_id: 1,
     collection_id: 1
    },
    {
     villa_id: 1,
     collection_id: 2
    },
    {
     villa_id: 2,
     collection_id: 1
    },
    {
     villa_id: 3,
     collection_id: 2
    },
    {
     villa_id: 3,
     collection_id: 4
    },
    {
     villa_id: 3,
     collection_id: 1
    },
    {
     villa_id: 1,
     collection_id: 4
    }, 
  ])
  
Area.create!([
    {
      name: "Central Tuscany",
      description: "Where it all started",
      image_file: "brogino.jpg",
      region: "Tuscany",
      country: "Italy"
    },
    {
      name: "Chianti",
      description: "The wine country",
      image_file: "poggio-landi.jpg",
      region: "Tuscany",
      country: "Italy"
    },
    {
      name: "Siena",
      description: "Pre Renaissance delights, Giotto and his mates.",
      image_file: "siena.jpg",
      region: "Tuscany",
      country: "Italy"
    },   
  ])
  
Feature.create!([
  {
    name: "Tennis court"
  },
  {
    name: "Swimming pool"
  },
  {
    name: "Barbecue"
  },
  {
    name: "Coffee Maker"
  },
  {
    name: "Air Conditioning"
  },
  {
    name: "Central Heating"
  },
  {
    name: "Maid service"
  },
  {
    name: "Jacuzzi"
  },
])
User.create!([
  {
    name: "Example User",
    email: "user@example.com",
    password: "secret",
    password_confirmation: "secret"
  },
  {
    name: "Bill the client",
    email: "bill@example.com",
    password: "secret",
    password_confirmation: "secret"
  },
  {
    name: "Joan longstanding client",
    email: "joan@example.com",
    password: "secret",
    password_confirmation: "secret"
  },
  {
    name: "James Corden",
    email: "james@example.com",
    password: "secret",
    password_confirmation: "secret"
  }
])


