string = gets.chomp

hash_array = Hash.new

string.to_s.each_char do |val|
	hash_array[val] = value + 1
	puts hash_array
end