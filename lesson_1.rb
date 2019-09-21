print "What's your first name?"
first_name = gets.chomp

print "Last name?"
last_name = gets.chomp

print 'Where are you living?'
city = gets.chomp

print "What are your state?"
state = gets.chomp

print "Your name: #{first_name.capitalize!}, last_name: #{last_name.capitalize!}, city: #{city.upcase.capitalize!}, state: #{state.upcase!}"