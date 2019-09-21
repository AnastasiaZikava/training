puts 'Write text'
text = gets.chomp
puts 'Write redact text'
redact = gets.chomp

words = text.split("")

words.each do |word|
  if word == redact
    print 'REDACTED '
  else
    print word + " "
  end
end

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end