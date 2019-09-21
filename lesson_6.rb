movies = {
  'Tom & Jerry': 3,
  'Frog': 2,
  'Rock&Roll': 5
  }

puts 'Write movie'
choice = gets.chomp

case choice
  when 'add'
    puts 'Movie title: '
  	title = gets.chomp.to_sym
  	puts 'Movie rating (1 - 5)'
  	rating = gets.chomp.to_i
      if movies[title.to_sym].nil?
        movies[title] = rating
      else
        puts 'error'
      end
    when "update"
  		puts 'Update'
  		title = gets.chomp
  		if movies[title].nil?
        puts 'you need to create new movie'
      else
        puts 'update rating for movie'
        rating = gets.chomp.to_s
        movies[title] = rating.to_i
      end
  when 'display'
  	movies.each do |k,v|
      puts "#{k}: #{v}"
    end
  when 'delete'
  	puts 'delete'
  	title = gets.chomp
  	if movies[title].nil?
      puts 'i dont no what i can update'
    else
      movies.delete(title)
    end
else
  puts 'Error!'
end