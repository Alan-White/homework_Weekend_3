require_relative( '../models/customer' )
require_relative( '../models/film' )
require_relative( '../models/ticket' )

require( 'pry-byebug' )

Ticket.delete_all()
Film.delete_all()
Customer.delete_all()

customer1 = Customer.new({ 'name' => 'Alan', 'funds' => 10 })
customer1.save()
customer2 = Customer.new({ 'name' => 'Jan', 'funds' => 20 })
customer2.save()
customer3 = Customer.new({ 'name' => 'Avie', 'funds' => 30 })
customer3.save()


film1 = Film.new({ 'title' => 'Jaws', 'price' => 5 })
film1.save()
film2 = Film.new({ 'title' => 'Life of Brian', 'price' => 4 })
film2.save()

ticket1 = Ticket.new({ 'customer_id' => customer1.id, 'film_id' => film1.id })
ticket1.save()

ticket2 = Ticket.new({ 'customer_id' => customer2.id, 'film_id' => film1.id })
ticket2.save()

ticket3 = Ticket.new({ 'customer_id' => customer3.id, 'film_id' => film2.id })
ticket3.save()


binding.pry
nil