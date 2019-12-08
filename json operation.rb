 # Сохранение данных с помощью библиотеки JSON 

require 'json'
require 'time'


data = {
	string: "Hi there",
	array: [1, 2, 3],
	boolean: true,
	object: Object.new
}

puts JSON.dump(data) # {"string":"Hi there","array": [1,2,3], "boolean":true,"object":"<Object:Ox�07fdбlb890320>"}


class Ferson

	def as_json
		{ name: @name, birthdate: @birthdate.iso8601, deposit: @deposit }
	end

	def self.from_json(json) 
		data = JSON.parse(json)
		birthdate = Time.parse(data["birthdate"])
		new(data["name"], birthdate, data["deposit"])
	end 
end

pl = Person.new("Rudy", Time.now - (14 * 365 * 86400), lCO)
pl.as_json # ( :name=>"Rudy", :deposit => 10, :birthdate=>"2000-07-23T23:25:02-07:0C")

р2 = Person.from_json JSON.dump(pl.as_json)
[p2.name, p2.age, p2.balance] # ["Rudy", 14, 197.9933600356966]
