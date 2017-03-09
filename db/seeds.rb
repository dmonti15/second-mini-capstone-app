# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

plant = Plant.new({
  name:"Silk Bamboo Floor Plant", 
  price:65, 
  image:"https://secure.img1-fg.wfcdn.com/lf/49/hash/10311/26444092/1/Nearly-Natural-Silk-Bamboo-Floor-Plant-in-Pot.jpg", 
  description:"Still in stock: 48in. H x 29in. W x 29in. D, product weighs 6lbs."
  })
plant.save

plant = Plant.new({
  name:"Succulent Plant in Pot", 
  price:25, 
  image:"https://secure.img1-fg.wfcdn.com/lf/49/hash/1669/26666649/1/National-Tree-Co.-Succulent-Plant-in-Pot.jpg", 
  description:"Still in stock: 12in. H x 5in. W x 5in. D, product weighs 0.92lb."
  })
plant.save

plant = Plant.new({
  name:"Preserved Boxwood Double Ball Topiary in Pot", 
  price:80, 
  image:"https://secure.img1-fg.wfcdn.com/lf/49/hash/37307/35796557/1/Preserved%2BBoxwood%2BDouble%2BBall%2BTopiary.jpg", 
  description:"Still in stock: 20in. H x 6in. W x 6in. D, product weighs 4.6lbs."
  })
plant.save

plant = Plant.new({
  name:"Brookings Silk Areca Palm Tree in Pot", 
  price:75, 
  image:"https://secure.img1-fg.wfcdn.com/lf/49/hash/37308/29062694/1/Beachcrest-Home-Brookings-Silk-Areca-Palm-Tree-in-Pot.jpg", 
  description:"Still in stock: 45in. H x 27in. W x 25in. D, product weighs 6lbs."
  })
plant.save