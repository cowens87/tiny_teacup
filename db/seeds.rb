# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Customer.destroy_all
Tea.destroy_all
Subscription.destroy_all
# Customers
@ms_jenkins = Customer.create!({
                                first_name: 'Maddison', 
                                last_name: 'Jenkins', 
                                address: "101 Puppy Love Lane", 
                                email: 'maddison@fake.com', 
                                subscription: true
                              })
@mr_bopbop  = Customer.create!({
                                first_name: 'John', 
                                last_name: 'Bopbop', 
                                address: "205 Cats Dont Dance Dr", 
                                email: 'john@fake.com', 
                                subscription: true
                             })
# Teas
@thai     = Tea.create!({ 
                        title: "Thai Tea", 
                        description: "Smooth taste with hints of cream and exotic spices", 
                        price: 6.50,
                        brew_time: 5.50
                      })
@soursop  = Tea.create!({
                        title: "Soursop Tea", 
                        description: "Rich and decadent mocha and java flavors", 
                        price: 8.65,
                        brew_time: 5.50
                      })
@matcha   = Tea.create!({
                        title: "Matcha Tea", 
                        description: "Bitter sweet matcha, good for your mouth and soul", 
                        price: 15.50,
                        brew_time: 5.50
                      })
# Subscriptions
Subscription.create!({
                    title: "Thai Tea", 
                    description: "Smooth taste with hints of cream and exotic spices", 
                    delivery_cadence: 'monthly', 
                    customer: @ms_jenkins,
                    tea: @thai
                  })
Subscription.create!({
                    title: "Soursop Tea", 
                    description: "Rich and decadent mocha and java flavors", 
                    delivery_cadence: 'weekly', 
                    customer: @ms_jenkins,
                    tea: @soursop})
Subscription.create!({ 
                    title: "Matcha Tea", 
                    description: "Bitter sweet matcha, good for your mouth and soul",  
                    delivery_cadence: 'quarterly', 
                    customer: @mr_bopbop, 
                    tea: @matcha
                  })
