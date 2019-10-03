def print_funny_smiles(array)
	count = 0
	array.each do |smile|
		count += 1 if smile =~ /(\:|\;)(\~|\-)?(\)|\D)/
	end
	puts "Count: #{count}"
end


print_funny_smiles([':)', ';(', ';}', ':-D'])
print_funny_smiles([';D', ':-(', ':-)', ';~)'])
print_funny_smiles([';]', ':[', ';*', ':$', ';-D'])