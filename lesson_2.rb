print 'Write string:)'
user_input = gets.chomp
user_input.downcase!
if user_input.include?('s')
	puts "#{user_input.gsub!(/s/, 'th')}"
else
  puts 'no'
end


# test_1 should be true
test_1 = (10 == 10) && (2 != 5)

# test_2 = should be true
test_2 = (5 != 6) || ((5 + 5) || 10)
 
# test_3 = should be false
test_3 = (10 == 2) && (9 != 9)



# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true